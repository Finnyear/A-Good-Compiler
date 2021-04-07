extern int scanf(const char *restrict, ...);
extern int sscanf(const char *restrict, const char *restrict, ...);
extern int printf(const char *restrict, ...);
extern int sprintf(char *, const char *, ...);
extern unsigned int strlen(const char *);
extern int strcmp(const char*, const char *);
extern char* strcat(char*, const char *);
extern void* memcpy(void*, const void*, unsigned int);
extern void* malloc(unsigned int);

void g_print(char* str) {
	printf("%s", str);
}

void g_println(char* str) {
	printf("%s\n", str);
}

void g_printInt(int n) {
	printf("%d", n);
}

void g_printlnInt(int n) {
	printf("%d\n", n);
}

char* g_getString() {
	char *str = (char*) malloc(128);
	scanf("%s", str);
	return str;
}

int g_getInt() {
	int x;
	scanf("%d", &x);
	return x;
}

char* g_toString(int i) {
	char *str = (char*) malloc(12);
	sprintf(str, "%d", i);
	return str;
}

int l_string_ord(char *s, int i) {
	return *(s + i);
}
char* l_string_substring(char *s, int l, int r) {
	char *str = (char*) malloc(r - l + 1);
	memcpy(str, s + l, r - l);
	return str;
}
int l_string_parseInt(char *s) {
	int d;
	sscanf(s, "%d", &d);
	return d;
}
int l_string_length(char *s) {
	return strlen(s);
}
char* g_stringadd(char *lhs, char *rhs) {
	int l = strlen(lhs), r = strlen(rhs);
	char *str = (char*) malloc(l + r + 1);
	memcpy(str, lhs, l);
	strcat(str, rhs);
	return str;
}
_Bool g_stringeq(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) == 0;
}
_Bool g_stringne(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) != 0;
}
_Bool g_stringlt(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) < 0;
}
_Bool g_stringle(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) <= 0;
}
_Bool g_stringgt(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) > 0;
}
_Bool g_stringge(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) >= 0;
}