
|구분|명령어|설명|
|:----|:----|:---|
|ls|```ls -la ```|hidden 파일까지 모두 리스트 (a : all)|
||```ls -lt ```|file timestamp 로 소트 하여 리스트 ( t : time)|
||```ls -ltr ```|최근것이 맨 밑에 오도록 리스트. (r : reverse)|
||```ls -lR ```|하위 디렉토리까지 Recursive 하게 리스트 (R : Recursive)|
||```ls -lt ```|file timestamp 로 소스 하여 리스트|
||``` ls -l 파이프 wc -l ```|현재 디렉토리의 파일 갯수 카운트|
|find|``` find . -name *.log -ls ```|. : 현재디렉토리 부터 찾기<br/>-name : 이름으로 찾기<br/>*.log : 확장자 log 인것 찾기<br/>-ls : 찾아서 수행할 action (ls)|
||``` find /logs/nexcore -name *.log.2014* -ls ```|/logs/nexcore 밑에서 파일명이 *.log.2014* 인것 찾아 리스트|
||```find -name *.log -exec grep NEXCORE {} +```|현재 디렉토리에서 *.log 파일을 찾아 grep NEXCORE 수행|
||```find /logs/nexcore -mtime +365 -name *.log -exec rm -f {} +```|/logs/nexcore 하위에서 365일 지난 *.log 파일을 찾아 삭제함.<br/>삭제는 특히 주의요망.<br/>엉뚱한 파일 삭제되지 않도록 시작 디렉토리 명시 필수, 확장자 명시 필수. (가급적 고객 인프라 담당자가 직접 지우도록 방법만 알려줌)|
|ps|```ps -ef 파이프grep NEXCORE```|WAS인스턴스중 NEXCORE 런타임 JVM 프로세스만 골라볼때<br/>-DNEXCORE*** 로 설정한 프로퍼티값이 grep 에 걸림|
||```ps -ef 파이프grep NC```|관리콘솔,로그로더 등 NEXCORE 데몬 프로세스들 조회|
|etc|```uname -a```|OS 버전 상세 표시|
||```uptime```|부팅된 시간|
||```whoami```|내가 현재 접속한 계정명|
||```top```|시스템 모니터링,<br/>top 에서 1 입력 → 코어별 사용률 따로 표시됨|