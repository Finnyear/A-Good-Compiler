extern int scanf(const char *restrict, ...);
extern int sscanf(const char *restrict, const char *restrict, ...);
extern int printf(const char *restrict, ...);
extern int sprintf(char *, const char *, ...);
extern unsigned int strlen(const char *);
extern int strcmp(const char*, const char *);
extern char* strcat(char*, const char *);
extern void* memcpy(void*, const void*, unsigned int);
extern void* malloc(unsigned int);

void print(char* str) {
	printf("%s", str);
}

void printInt(int n) {
	printf("%d", n);
}

void printlnInt(int n) {
	printf("%d\n", n);
}

char* getString() {
	char *str = (char*) malloc(128);
	scanf("%s", str);
	return str;
}

int getInt() {
	int x;
	scanf("%d", &x);
	return x;
}

char* toString(int i) {
	char *str = (char*) malloc(12);
	sprintf(str, "%d", i);
	return str;
}

int string_ord(char *s, int i) {
	return *(s + i);
}
char* string_substring(char *s, int l, int r) {
	char *str = (char*) malloc(r - l + 1);
	memcpy(str, s + l, r - l);
	return str;
}
int string_parseInt(char *s) {
	int d;
	sscanf(s, "%d", &d);
	return d;
}
int string_length(char *s) {
	return strlen(s);
}
char* string_add(char *lhs, char *rhs) {
	int l = strlen(lhs), r = strlen(rhs);
	char *str = (char*) malloc(l + r + 1);
	memcpy(str, lhs, l);
	strcat(str, rhs);
	return str;
}
_Bool string_eq(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) == 0;
}
_Bool string_ne(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) != 0;
}
_Bool string_lt(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) < 0;
}
_Bool string_le(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) <= 0;
}
_Bool string_gt(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) > 0;
}
_Bool string_ge(char *lhs, char *rhs) {
	return strcmp(lhs, rhs) >= 0;
}