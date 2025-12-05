import zipfile
from pathlib import Path

def build_package(output_zip: str = "fort-decision-density-package.zip") -> None:
    """
    Create a ZIP archive containing the current module's core artifacts.

    By default, it zips the following files if they exist in the same directory:
    - README.md
    - ontology.ttl
    - shacl.ttl
    - pdca_agent_prompt.md
    - visualization.md
    - build_package.py
    """
    base_dir = Path(__file__).resolve().parent
    zip_path = base_dir / output_zip

    files_to_include = [
        "README.md",
        "ontology.ttl",
        "shacl.ttl",
        "pdca_agent_prompt.md",
        "visualization.md",
        "build_package.py",
    ]

    with zipfile.ZipFile(zip_path, "w", compression=zipfile.ZIP_DEFLATED) as zf:
        for name in files_to_include:
            fp = base_dir / name
            if fp.exists():
                zf.write(fp, arcname=fp.name)
            else:
                print(f"Warning: {name} not found, skipping.")

    print(f"Created {zip_path}")

if __name__ == "__main__":
    build_package()
