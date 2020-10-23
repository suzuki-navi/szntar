
mkdir -p test/var

(
    cd .git
    ../szntar > ../test/var/archive.sh
)

(
    cd test/var

    rm -rf g
    mkdir g

    (
        cd g
        bash ../archive.sh
    )

)

diff -r .git test/var/g && echo OK

