from codecs import open


def find_in_file(pattern, path, open_file=open):
    """
        Returns True when the file contains the pattern otherwise returns False
    """
    with open_file(path, encoding='utf-8') as f:
        for line in f:
            if line.find(pattern) > -1:
                return True

    return False


def sort(tasks, results):
    """
        Sorts all results
    """
    matches = [tasks[i][1] for i, match in enumerate(results) if match]
    matches.sort()
    return matches
