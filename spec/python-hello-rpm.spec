Name:           python-hello-rpm
Version:        1.0.0
Release:        1.0.0
Summary:        A simple python RPM package

License:        GPL-3.0 license
URL:            https://github.com/vksir/python-hello-rpm.git
SOURCE:         %{name}-%{version}.tar.gz
BuildArch:      noarch

%description
A simple python RPM package

%prep
%setup -n %{name}-%{version}

%build
python setup.py build

%install
mkdir -p /usr/bin
python setup.py install --single-version-externally-managed -O1 --root %{buildroot} --install-lib %{python_sitelib}

%files
%defattr(755,root,root)
/usr/bin/*
%{python_sitelib}/
