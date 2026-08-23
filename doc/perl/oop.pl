#!/usr/bin/env perl

package test;
1;

# `bless` and `shift` seem important enough

sub new {
	my $person = {}; # equivalent to python's `self`

	# these are just default values
	$person->{NAME} = undef;
	$person->{AGE} = undef;
	$person->{GAY} = undef;

	bless($person) # magic to make $person actually the `self`

	return $person;
}

sub set_name {
	my $person = shift
	# I should have an index of all the special variable in perl at some point tbh
	if (@_) {
		$person->{NAME} = shift
	}
}
