#include <sys/stat.h>

/*
	<sys/stat.h> header
	fstat(), lstat(), stat() 함수가 반환하는 데이터의 구조를 정의한다.

	dev_t 
 */

#include <fcntl.h>
#include "tlpi_hdr.h"

#ifndef BUF_SIZE
#define BUF_SIZE 1024
#endif

int main(int argc, char *argv[])
{
	/*
	   file 표준 디스크립터
	   
	  _____________________________________________________________
	 | 파일 디스크립터 |  목     적 |  POSIX NAME   | stdio stream |
	  -------------------------------------------------------------
	 |        0        |  표준 입력 | STDIN_FILENO  |     stdin    |
	  -------------------------------------------------------------
	 |        1        |  표준 출력 | STDOUT_FILENO |     stdout   |
      -------------------------------------------------------------
	 |        2        |  표준 에러 | STDERR_FILENO |     stderr   |
	  -------------------------------------------------------------

	  프로그램이 시작되기 전에 파일 디스크립터가 적절히 수정되도록 보장한다.
	 */




	/*
	   1. fd = open(pathname, flags, mode) pathname이 가리키는 파일을 열고, 열린 파일을 이후의 호출에서 참조할 때 쓸
	       디스크립터를 리턴한다. 해당파일이 존재하지 않으면 flags의 값에 따라 open()이 만들 수도 있다.
		   flags는 또한 파일을 읽기,쓰기, 둘 다를 위해 열지를 지정한다.
		   mode는 파일을 만들 경우 파일에 부여할 권한을 지정한다. open()이 파일을 만들지 않을 경우, 이 인자는 무시되므로
		   생략할 수 있다.
		
		2. numread = read(Fd, buffer, count)는 fd가 가리키는 파일에서 최대 count바이트를 읽어 buffer에 저장한다. read()는
			실제로 읽은 바이트 수를 리넡ㄴ한다. 더 이상 읽을 수 없으면, read()는 0을 리턴한다.
		
		3. numwritten = write(fd, buffer, count)는 buffer에서 최대 count바이트를 fd가 가리키는 열러 있는 파일에 쓴다.
			write()는 실제로 쓴 바이트 수를 리턴하므로, count보다 작은 수를 리턴할 수도 있다.
		
		4. status = close(fd)는 모든 I/O를 마친 뒤에 파일 디스크립터 fd와 관련 커널 자원을 해제하기 위해 호출한다.
	   */

	int inputFd;
	int outputFd;
	int openFlags;

	mode_t  filePerms;    // mode_t : 정수, 파일 권한과 종류
	ssize_t numRead;     // ssize_t : 부호 있는 정수, 바이트 수 또는 (음수로 나타낸) 에러 표시

		/*  표준 시스템 데이터형의 이름은 대부분 t로 끝이난다. 다른 헤더파일에 정의 되어 있는 것도 있지만,
			상당수는 <sys/types.h>에 정의되어 있다.. */


		/*
		blkcnt_t : 부호 있는 정수 (파일 블록 수)
		blksize_t : 부호 있는 정수 (파일 블록 크기)
		cc_t : 부호 없는 정수
		clock_t :  정수 또는 부동소수점 실수 (클록 틱으로 나타낸 시스템 시간)
		clockid_t : 산술형 (POSIX.1b 클록과 타이머 함수용 클록 ID)
		comp_t : SUSv3에 없음 (압축된 클록 틱)
		dev_t :  산술형 (major numver와 minor number로 이뤄진 divice number)
		DIR : 데이터형 요구사항 없음 (디렉토리 스트림)
		td_set : 구조체형 (select()용 퍄일 디스크립터
		fsblkcnt_t : 부호 없는 정수 (파일 시스템 블록 수)
		gid_t : 정수 (숫자로 나타낸 그룹)
		id_t : 정수 (ID를 담는 일반적인 데이터형. 최소한 pid_t, uid_t, gid_t를 담을 만큼 커야 한다.
		in_addr_t : 32비트 부호 없는 정수 (IPv4 address)
		in_port_t : 16비트 부호 없는 정수 (IP port number)
		ino_t : 부호 없는 정수 (file i-node number)
		key_t : 산술형 ( system V IPC key)
		mode_t : 정수 (파일 권한과 종류)
		mqd_t : 데이터형 요구사항 없지만, 배열형은 안됨 (POSICX message 큐 디스크립터)
		msglen_t : 부호 없는 정수 (시스템 V message 큐에 허용되는 바이트 수)
		msgqum_t : 부호 없는 정수 (시스템 V message 큐에 들어있는 메세지 수)
		nfds_t  부호 없는 정수 (poll()용 파일 디스크립터 수)
		nlink_t : 정수 (파일을 가리키는 hard 링크의 수)
		off_t : 부호 있는 정수 (파일 오프셋 또는 크기)
		pid_t : 부호 있는 정수 (프로세스 ID, 프로세스 그룹 ID, ID절)
		ptrdiff_t : 부호 있는 정수 (부호 있는 정수로 나타낸, 두 포인터 값의 차이)
		rlim_t : 부호 없는 정수 (자원 한도)_
		sa_family_t : 부호 없는 정수 (소켓 주소 체계_socket address family)
		shmatt_t : 부호 없는 정수 (시스템 V 공유 메모리 세그먼트에 부착된 프로세스의 수)
		sig_atomic_t : 정수 (atomic하게 접근할 수 있는 데이터 형)
		siginfo_t : 구조체형 (시그널 출처에 대한 정보)
		sigset_t : 정수 또는 구조체 형 (시그널)
		size_t : 부호 없는 정수 (바이트 수로 나타낸 객체의 크기)
		socklen_t : 최소 32바이트 정수형 (바이트 수로 나타낸 소켓 주소 구조체의 크기)
		speed_t : 부호 없는 정수 (터미널 라인 속도)
		ssize_t : 부호 있는 정수 (바이트 수 또는 에러 표시)
		stack_t : 구조체 형 (대체 시그널 스택 설명)
		suseconds_t : [-1, 1000000] 범위의 부호 있는 정수 (마이크로초 시간 간격)
		tcflag_t : 부호 없는 정수 (터미널 모드 플래그 비트 마스크)
		time_t : (정수 또는 부동소수점 실수 (기원 이후 흐른 초로 나타낸 달력 시간)
		timer_t : 산술형 (POSIX.1b 타이머 함수용 타이머 ID)
		uid_t : 정수 (숫자로 나타낸 사용자 ID)
	   */

	
	char buf[BUF_SIZE];

	if (argc != 3 || strcmp(argv[1], "--help") == 0)
		usageErr("%s old-file new-file\n", argv[0]);

	/* open the I/O file */
	
	inputFd = open(argv[1], O_RDONLY);
	/* 
	   1번의 fd = open(pathname, flags, mode) 해설 참조
	   O_RDONLY : 읽기 전용으로 파일을 연다. 
	*/

	if (inputFd == -1)
		errExit("opening file %s", argv[1]);

	/*
	   ========================================================================================
	  |                                open()의 flags 인자값                                   |
	   ----------------------------------------------------------------------------------------
	  |         1. O_RDONLY           |                  읽기 전용으로 연다.                   |
	   ----------------------------------------------------------------------------------------
	  |		    2. O_WRONLY           |                  쓰기 전용으로 연다.                   |
	   ----------------------------------------------------------------------------------------
	  |         3. O_RDWR             |                  읽고 쓰기용으로 연다.                 |
	   ----------------------------------------------------------------------------------------
	  |   		4. O_CLOEXEC          |      실행 시 닫기(close-on-exec) 플래그를 설정한다.    |
	   ----------------------------------------------------------------------------------------
	  |    		5. O_CREAT            |          파일이 이미 존재하지 않으면 새로 만든다.      |
	   ----------------------------------------------------------------------------------------
	  |         6. O_DIRECT           |            파일 I/O가 버퍼 캐시를 우회한다.            |
	   ----------------------------------------------------------------------------------------
	  |         7. O_DIRECTORY        |          pathname이 디렉토리가 아니면 실패한다.        |
	   ----------------------------------------------------------------------------------------
	  |         8. O_EXCL             |       O_CREAT와 함께, 배타적으로 파일을 만든다.        |
	   ----------------------------------------------------------------------------------------
	  |     	9. O_LARGEFFILE       |         32비트 시스템에서 큰 파일을 열때 쓴다.         |
	   ----------------------------------------------------------------------------------------
	  |		    10. O_NOATIME         |              read()시에 파일 최종 접근 시간            |     
	  |                               |            (last access time)을 갱신하지 않는다.       |
       ----------------------------------------------------------------------------------------
	  |  		11. O_NOCITY          |       pathname으로 제어 터미널이 되지 않게 한다.       |
	   ----------------------------------------------------------------------------------------
	  | 	    12. O_NOFOLLOW        |           심볼릭 링크를 역참조하지 않는다.             |
	   ----------------------------------------------------------------------------------------
	  |		    13. O_TRUNC           |           기존 파일의 길이를 0으로 설정한다.           |
	   ----------------------------------------------------------------------------------------
	  |	    	14. O_APPEND          |            언제나 파일의 끝에 추가해서 쓴다.           |
	   ----------------------------------------------------------------------------------------
	  | 		15. O_DSYNC           |           동기 I/O 데이터 무결성을 제공한다.           |
	   ----------------------------------------------------------------------------------------
	  |         16. O_NONBLOCK        |                  비블로킹 모드로 연다.                 |
	   ----------------------------------------------------------------------------------------
	  |         17. O_SYNC            |            파일 쓰기를 동기 모드로 설정한다.           |
	   ========================================================================================
	  |                              st_mode 값에 대한 기호 이름 정의                          |
	   ----------------------------------------------------------------------------------------
	  |             S_IFMT            |                        파일 유형                       |
	   ----------------------------------------------------------------------------------------
      |             S_IFBLK           |                        특별 블록                       |
	   ----------------------------------------------------------------------------------------
	  |             S_IFCHR           |                      캐릭터 스페셜                     |
	   ----------------------------------------------------------------------------------------
	  |             S_IFIFO           |                       FIFO 스페셜                      |
	   ----------------------------------------------------------------------------------------
	  |             S_IFREG           |                         정규병                         |
	   ----------------------------------------------------------------------------------------
	  |             S_IFDIR           |                      예비 규칙서                       |
	   ----------------------------------------------------------------------------------------
	  |             S_IFLNK           |                      심볼릭 링크                       |
	   ========================================================================================
	  |                                      파일 모드 비트                                    |
       ----------------------------------------------------------------------------------------
	  |             S_IRWXU           |            소유자 별 읽기, 쓰기, 실행 / 검색           |
	   ----------------------------------------------------------------------------------------
	  |             S_IRUSR           |                  읽기 권한, 소유자                     |
	   ----------------------------------------------------------------------------------------
	  |             S_IWUSR           |                  쓰기 권한, 소유자                     |
	   ----------------------------------------------------------------------------------------
	  |             S_IXUSR           |              실행 / 검색 권한, 소유자                  |
	   ----------------------------------------------------------------------------------------
	  |             S_IRWXG           |            그룹 별 읽기, 쓰기, 실행 / 검색             |
	   ----------------------------------------------------------------------------------------
	  |             S_IRGRP           |                    읽기 권한, 그룹                     |
	   ----------------------------------------------------------------------------------------
	  |             S_IWGRP           |                    쓰기 권한, 그룹                     |
	   ----------------------------------------------------------------------------------------
	  |             S_IXGRP           |                실행 / 검색 권한, 그룹                  |
	   ----------------------------------------------------------------------------------------
	  |             S_IRWXO           |        다른 사람에 의한 읽기, 쓰기, 실행 / 검색        |
	   ----------------------------------------------------------------------------------------
	  |             S_IROTH           |                   읽기 권한, 기타                      |
	   ----------------------------------------------------------------------------------------
	  |             S_IWOTH           |                   쓰기 권한, 기타                      |
	   ----------------------------------------------------------------------------------------
	  |             S_IXOTH           |               실행 / 검색 권한, 기타                   |
	   ----------------------------------------------------------------------------------------
	  |             S_ISUID           |                실행시 사용자 ID 설정                   |
	   ----------------------------------------------------------------------------------------
	  |             S_ISGID           |                  실행시 그룹 ID 설정                   |
	   ----------------------------------------------------------------------------------------
	  |             S_ISVTX           |               디렉토리, 제한된 삭제 플래그             |
	   =========================================================================================

      	* S_IRUSR, S_IWUSR, S_IXUSR, S_IRGRP, S_IWGRP, S_IXGRP, S_IROTH, S_IWOTH, S_IXOTH, S_ISUID, S_ISGID 및 
	      S_ISVTX에 의해 정의 된 비트는 고유하다.
		* S_IRWXU는 S_IRUSR, S_IWUSR 및 S_IXUSR의 비트 단위 OR.
		* S_IRWXG는 S_IRGRP, S_IWGRP 및 S_IXGRP의 비트 단위 OR.
		* S_IRWXO는 S_IROTH, S_IWOTH 및 S_IXOTH의 비트 단위 OR.

	   */

	openFlags = O_CREAT | O_WRONLY | O_TRUNC;
	filePerms = S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;
	outputFd = open(argv[2], openFlags, filePerms);

	if (outputFd == -1)
		errExit("opening file %s", argv[2]);
	while ((numRead = read(inputFd, buf, BUF_SIZE)) > 0)
		if (write(outputFd, buf, numRead) != numRead)
		fatal("couldn't write whole buffer");
	if	(numRead == -1)
		errExit("Read");

	if (close(inputFd) == -1)
		errExit("close input");
	if (close(outputFd) == -1)
		errExit("close output");

	exit(EXIT_SUCCESS);	

	return (0);
}


/* compile

    1. 에러에 대해 만든 헤더가 들어간  함수 c언어파일을 이용하여서 object 파일을 만들어 준다.
	$ gcc -c -o error_functions.o error_functions.c
	
	2. 만들어준 object 파일을 이용하여서 c언어 파일을 컴파일한다. (c파일로 컴파일하면 오류가 발생하기 때문에
	   각 파일별로 object 파일을 만들어 주고 나중에 링크를 해준다.)
	$ gcc -o flags flags.c error_functions.o

	3. ./flags hello.txt hello2
	   ./flags (basic file) (new file)
	   
 */

