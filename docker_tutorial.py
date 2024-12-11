import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser(prog="docker_tutorial.py",
                                     description="docker tutorial, prints input file contents.",
                                     usage="python3 docker_tutorial.py [file]")
    parser.add_argument("file", help="file to print")
    args = parser.parse_args()
    file = args.file

    with open(file, 'r') as f:
        print(f.read())
