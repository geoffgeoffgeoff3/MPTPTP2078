%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.LdSPfALbp5

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:54:03 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :  128 ( 311 expanded)
%              Number of leaves         :   42 ( 107 expanded)
%              Depth                    :   16
%              Number of atoms          : 1088 (6411 expanded)
%              Number of equality atoms :   34 (  63 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(v2_funct_2_type,type,(
    v2_funct_2: $i > $i > $o )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(t29_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ B @ A )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
         => ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
           => ( ( v2_funct_1 @ C )
              & ( v2_funct_2 @ D @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [D: $i] :
            ( ( ( v1_funct_1 @ D )
              & ( v1_funct_2 @ D @ B @ A )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
           => ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
             => ( ( v2_funct_1 @ C )
                & ( v2_funct_2 @ D @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t29_funct_2])).

thf('0',plain,
    ( ~ ( v2_funct_1 @ sk_C )
    | ~ ( v2_funct_2 @ sk_D @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( v2_funct_1 @ sk_C )
   <= ~ ( v2_funct_1 @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k6_partfun1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t24_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ B @ A )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
         => ( ( r2_relset_1 @ B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ ( k6_partfun1 @ B ) )
           => ( ( k2_relset_1 @ A @ B @ C )
              = B ) ) ) ) )).

thf('4',plain,(
    ! [X36: $i,X37: $i,X38: $i,X39: $i] :
      ( ~ ( v1_funct_1 @ X36 )
      | ~ ( v1_funct_2 @ X36 @ X37 @ X38 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) )
      | ~ ( r2_relset_1 @ X37 @ X37 @ ( k1_partfun1 @ X37 @ X38 @ X38 @ X37 @ X36 @ X39 ) @ ( k6_partfun1 @ X37 ) )
      | ( ( k2_relset_1 @ X38 @ X37 @ X39 )
        = X37 )
      | ~ ( m1_subset_1 @ X39 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X38 @ X37 ) ) )
      | ~ ( v1_funct_2 @ X39 @ X38 @ X37 )
      | ~ ( v1_funct_1 @ X39 ) ) ),
    inference(cnf,[status(esa)],[t24_funct_2])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ sk_B_1 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
      | ( ( k2_relset_1 @ sk_B_1 @ sk_A @ X0 )
        = sk_A )
      | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0 ) @ ( k6_partfun1 @ sk_A ) )
      | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B_1 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ sk_B_1 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
      | ( ( k2_relset_1 @ sk_B_1 @ sk_A @ X0 )
        = sk_A )
      | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0 ) @ ( k6_partfun1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,
    ( ( ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_D )
      = sk_A )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
    | ~ ( v1_funct_2 @ sk_D @ sk_B_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['2','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('11',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ( ( k2_relset_1 @ X20 @ X21 @ X19 )
        = ( k2_relat_1 @ X19 ) )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('12',plain,
    ( ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_D )
    = ( k2_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v1_funct_2 @ sk_D @ sk_B_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_A ),
    inference(demod,[status(thm)],['9','12','13','14','15'])).

thf(d3_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v5_relat_1 @ B @ A ) )
     => ( ( v2_funct_2 @ B @ A )
      <=> ( ( k2_relat_1 @ B )
          = A ) ) ) )).

thf('17',plain,(
    ! [X27: $i,X28: $i] :
      ( ( ( k2_relat_1 @ X28 )
       != X27 )
      | ( v2_funct_2 @ X28 @ X27 )
      | ~ ( v5_relat_1 @ X28 @ X27 )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[d3_funct_2])).

thf('18',plain,(
    ! [X28: $i] :
      ( ~ ( v1_relat_1 @ X28 )
      | ~ ( v5_relat_1 @ X28 @ ( k2_relat_1 @ X28 ) )
      | ( v2_funct_2 @ X28 @ ( k2_relat_1 @ X28 ) ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,
    ( ~ ( v5_relat_1 @ sk_D @ sk_A )
    | ( v2_funct_2 @ sk_D @ ( k2_relat_1 @ sk_D ) )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['16','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('21',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v5_relat_1 @ X16 @ X18 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('22',plain,(
    v5_relat_1 @ sk_D @ sk_A ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_A ),
    inference(demod,[status(thm)],['9','12','13','14','15'])).

thf('24',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('25',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( v1_relat_1 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('26',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,(
    v2_funct_2 @ sk_D @ sk_A ),
    inference(demod,[status(thm)],['19','22','23','26'])).

thf('28',plain,
    ( ~ ( v2_funct_2 @ sk_D @ sk_A )
   <= ~ ( v2_funct_2 @ sk_D @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('29',plain,(
    v2_funct_2 @ sk_D @ sk_A ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,
    ( ~ ( v2_funct_1 @ sk_C )
    | ~ ( v2_funct_2 @ sk_D @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('31',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['29','30'])).

thf('32',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['1','31'])).

thf('33',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( v1_relat_1 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('35',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['33','34'])).

thf(cc1_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_funct_1 @ A ) ) )).

thf('36',plain,(
    ! [X9: $i] :
      ( ( v1_funct_1 @ X9 )
      | ~ ( v1_xboole_0 @ X9 ) ) ),
    inference(cnf,[status(esa)],[cc1_funct_1])).

thf(cc2_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_xboole_0 @ A )
        & ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A )
        & ( v2_funct_1 @ A ) ) ) )).

thf('37',plain,(
    ! [X10: $i] :
      ( ( v2_funct_1 @ X10 )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 )
      | ~ ( v1_xboole_0 @ X10 ) ) ),
    inference(cnf,[status(esa)],[cc2_funct_1])).

thf('38',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ~ ( v1_xboole_0 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( v2_funct_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X0: $i] :
      ( ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_xboole_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['38'])).

thf('40',plain,
    ( ~ ( v1_xboole_0 @ sk_C )
    | ( v2_funct_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['35','39'])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('41',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('42',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('43',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X6 @ X7 )
      | ~ ( v1_xboole_0 @ X8 )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('44',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) )
      | ~ ( r2_hidden @ X0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k6_partfun1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) )
        & ( m1_subset_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ) )).

thf('48',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X31 ) ) )
      | ~ ( v1_funct_1 @ X29 )
      | ~ ( v1_funct_1 @ X32 )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) )
      | ( m1_subset_1 @ ( k1_partfun1 @ X30 @ X31 @ X33 @ X34 @ X29 @ X32 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X34 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_partfun1])).

thf('49',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['49','50'])).

thf('52',plain,
    ( ~ ( v1_funct_1 @ sk_D )
    | ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['46','51'])).

thf('53',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,(
    m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['52','53'])).

thf(redefinition_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_relset_1 @ A @ B @ C @ D )
      <=> ( C = D ) ) ) )).

thf('55',plain,(
    ! [X22: $i,X23: $i,X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ~ ( m1_subset_1 @ X25 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ( X22 = X25 )
      | ~ ( r2_relset_1 @ X23 @ X24 @ X22 @ X25 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('56',plain,(
    ! [X0: $i] :
      ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ X0 )
      | ( ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D )
        = X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,
    ( ~ ( m1_subset_1 @ ( k6_partfun1 @ sk_A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) )
    | ( ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D )
      = ( k6_partfun1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['45','56'])).

thf(t29_relset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )).

thf('58',plain,(
    ! [X26: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X26 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X26 @ X26 ) ) ) ),
    inference(cnf,[status(esa)],[t29_relset_1])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('59',plain,(
    ! [X35: $i] :
      ( ( k6_partfun1 @ X35 )
      = ( k6_relat_1 @ X35 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('60',plain,(
    ! [X26: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X26 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X26 @ X26 ) ) ) ),
    inference(demod,[status(thm)],['58','59'])).

thf('61',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D )
    = ( k6_partfun1 @ sk_A ) ),
    inference(demod,[status(thm)],['57','60'])).

thf('62',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t26_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [E: $i] :
          ( ( ( v1_funct_1 @ E )
            & ( v1_funct_2 @ E @ B @ C )
            & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
         => ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) )
           => ( ( ( C = k1_xboole_0 )
                & ( B != k1_xboole_0 ) )
              | ( v2_funct_1 @ D ) ) ) ) ) )).

thf('63',plain,(
    ! [X40: $i,X41: $i,X42: $i,X43: $i,X44: $i] :
      ( ~ ( v1_funct_1 @ X40 )
      | ~ ( v1_funct_2 @ X40 @ X41 @ X42 )
      | ~ ( m1_subset_1 @ X40 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X41 @ X42 ) ) )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X43 @ X41 @ X41 @ X42 @ X44 @ X40 ) )
      | ( v2_funct_1 @ X44 )
      | ( X42 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X44 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X43 @ X41 ) ) )
      | ~ ( v1_funct_2 @ X44 @ X43 @ X41 )
      | ~ ( v1_funct_1 @ X44 ) ) ),
    inference(cnf,[status(esa)],[t26_funct_2])).

thf('64',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B_1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B_1 ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( v2_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D ) )
      | ~ ( v1_funct_2 @ sk_D @ sk_B_1 @ sk_A )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['62','63'])).

thf('65',plain,(
    v1_funct_2 @ sk_D @ sk_B_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('66',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('67',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B_1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B_1 ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( v2_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['64','65','66'])).

thf('68',plain,
    ( ~ ( v2_funct_1 @ ( k6_partfun1 @ sk_A ) )
    | ( v2_funct_1 @ sk_C )
    | ( sk_A = k1_xboole_0 )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) )
    | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['61','67'])).

thf(fc4_funct_1,axiom,(
    ! [A: $i] :
      ( ( v2_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('69',plain,(
    ! [X12: $i] :
      ( v2_funct_1 @ ( k6_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[fc4_funct_1])).

thf('70',plain,(
    ! [X35: $i] :
      ( ( k6_partfun1 @ X35 )
      = ( k6_relat_1 @ X35 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('71',plain,(
    ! [X12: $i] :
      ( v2_funct_1 @ ( k6_partfun1 @ X12 ) ) ),
    inference(demod,[status(thm)],['69','70'])).

thf('72',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('73',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('74',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('75',plain,
    ( ( v2_funct_1 @ sk_C )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['68','71','72','73','74'])).

thf('76',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['1','31'])).

thf('77',plain,(
    sk_A = k1_xboole_0 ),
    inference(clc,[status(thm)],['75','76'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('78',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k2_zfmisc_1 @ X4 @ X5 )
        = k1_xboole_0 )
      | ( X4 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('79',plain,(
    ! [X5: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X5 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['78'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('80',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('81',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ sk_C ) ),
    inference(demod,[status(thm)],['44','77','79','80'])).

thf('82',plain,(
    v1_xboole_0 @ sk_C ),
    inference('sup-',[status(thm)],['41','81'])).

thf('83',plain,(
    v2_funct_1 @ sk_C ),
    inference(demod,[status(thm)],['40','82'])).

thf('84',plain,(
    $false ),
    inference(demod,[status(thm)],['32','83'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.LdSPfALbp5
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:45:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.22/0.58  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.58  % Solved by: fo/fo7.sh
% 0.22/0.58  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.58  % done 215 iterations in 0.124s
% 0.22/0.58  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.58  % SZS output start Refutation
% 0.22/0.58  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.22/0.58  thf(sk_B_type, type, sk_B: $i > $i).
% 0.22/0.58  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.58  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.58  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.58  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.58  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.58  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.58  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.22/0.58  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.58  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.22/0.58  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.22/0.58  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.58  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.22/0.58  thf(sk_D_type, type, sk_D: $i).
% 0.22/0.58  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.22/0.58  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.22/0.58  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.58  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.58  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.22/0.58  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.22/0.58  thf(v2_funct_2_type, type, v2_funct_2: $i > $i > $o).
% 0.22/0.58  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 0.22/0.58  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.58  thf(t29_funct_2, conjecture,
% 0.22/0.58    (![A:$i,B:$i,C:$i]:
% 0.22/0.58     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.22/0.58         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.58       ( ![D:$i]:
% 0.22/0.58         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.22/0.58             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.22/0.58           ( ( r2_relset_1 @
% 0.22/0.58               A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 0.22/0.58               ( k6_partfun1 @ A ) ) =>
% 0.22/0.58             ( ( v2_funct_1 @ C ) & ( v2_funct_2 @ D @ A ) ) ) ) ) ))).
% 0.22/0.58  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.58    (~( ![A:$i,B:$i,C:$i]:
% 0.22/0.58        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.22/0.58            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.58          ( ![D:$i]:
% 0.22/0.58            ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.22/0.58                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.22/0.58              ( ( r2_relset_1 @
% 0.22/0.58                  A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 0.22/0.58                  ( k6_partfun1 @ A ) ) =>
% 0.22/0.58                ( ( v2_funct_1 @ C ) & ( v2_funct_2 @ D @ A ) ) ) ) ) ) )),
% 0.22/0.58    inference('cnf.neg', [status(esa)], [t29_funct_2])).
% 0.22/0.58  thf('0', plain, ((~ (v2_funct_1 @ sk_C) | ~ (v2_funct_2 @ sk_D @ sk_A))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('1', plain, ((~ (v2_funct_1 @ sk_C)) <= (~ ((v2_funct_1 @ sk_C)))),
% 0.22/0.58      inference('split', [status(esa)], ['0'])).
% 0.22/0.58  thf('2', plain,
% 0.22/0.58      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.22/0.58        (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.22/0.58        (k6_partfun1 @ sk_A))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('3', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(t24_funct_2, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i]:
% 0.22/0.58     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.22/0.58         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.58       ( ![D:$i]:
% 0.22/0.58         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.22/0.58             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.22/0.58           ( ( r2_relset_1 @
% 0.22/0.58               B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ 
% 0.22/0.58               ( k6_partfun1 @ B ) ) =>
% 0.22/0.58             ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) ) ))).
% 0.22/0.58  thf('4', plain,
% 0.22/0.58      (![X36 : $i, X37 : $i, X38 : $i, X39 : $i]:
% 0.22/0.58         (~ (v1_funct_1 @ X36)
% 0.22/0.58          | ~ (v1_funct_2 @ X36 @ X37 @ X38)
% 0.22/0.58          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38)))
% 0.22/0.58          | ~ (r2_relset_1 @ X37 @ X37 @ 
% 0.22/0.58               (k1_partfun1 @ X37 @ X38 @ X38 @ X37 @ X36 @ X39) @ 
% 0.22/0.58               (k6_partfun1 @ X37))
% 0.22/0.58          | ((k2_relset_1 @ X38 @ X37 @ X39) = (X37))
% 0.22/0.58          | ~ (m1_subset_1 @ X39 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X38 @ X37)))
% 0.22/0.58          | ~ (v1_funct_2 @ X39 @ X38 @ X37)
% 0.22/0.58          | ~ (v1_funct_1 @ X39))),
% 0.22/0.58      inference('cnf', [status(esa)], [t24_funct_2])).
% 0.22/0.58  thf('5', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         (~ (v1_funct_1 @ X0)
% 0.22/0.58          | ~ (v1_funct_2 @ X0 @ sk_B_1 @ sk_A)
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))
% 0.22/0.58          | ((k2_relset_1 @ sk_B_1 @ sk_A @ X0) = (sk_A))
% 0.22/0.58          | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.22/0.58               (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0) @ 
% 0.22/0.58               (k6_partfun1 @ sk_A))
% 0.22/0.58          | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B_1)
% 0.22/0.58          | ~ (v1_funct_1 @ sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['3', '4'])).
% 0.22/0.58  thf('6', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B_1)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('7', plain, ((v1_funct_1 @ sk_C)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('8', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         (~ (v1_funct_1 @ X0)
% 0.22/0.58          | ~ (v1_funct_2 @ X0 @ sk_B_1 @ sk_A)
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))
% 0.22/0.58          | ((k2_relset_1 @ sk_B_1 @ sk_A @ X0) = (sk_A))
% 0.22/0.58          | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.22/0.58               (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0) @ 
% 0.22/0.58               (k6_partfun1 @ sk_A)))),
% 0.22/0.58      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.22/0.58  thf('9', plain,
% 0.22/0.58      ((((k2_relset_1 @ sk_B_1 @ sk_A @ sk_D) = (sk_A))
% 0.22/0.58        | ~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))
% 0.22/0.58        | ~ (v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)
% 0.22/0.58        | ~ (v1_funct_1 @ sk_D))),
% 0.22/0.58      inference('sup-', [status(thm)], ['2', '8'])).
% 0.22/0.58  thf('10', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(redefinition_k2_relset_1, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i]:
% 0.22/0.58     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.58       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.22/0.58  thf('11', plain,
% 0.22/0.58      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.22/0.58         (((k2_relset_1 @ X20 @ X21 @ X19) = (k2_relat_1 @ X19))
% 0.22/0.58          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21))))),
% 0.22/0.58      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.22/0.58  thf('12', plain,
% 0.22/0.58      (((k2_relset_1 @ sk_B_1 @ sk_A @ sk_D) = (k2_relat_1 @ sk_D))),
% 0.22/0.58      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.58  thf('13', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('14', plain, ((v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('15', plain, ((v1_funct_1 @ sk_D)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('16', plain, (((k2_relat_1 @ sk_D) = (sk_A))),
% 0.22/0.58      inference('demod', [status(thm)], ['9', '12', '13', '14', '15'])).
% 0.22/0.58  thf(d3_funct_2, axiom,
% 0.22/0.58    (![A:$i,B:$i]:
% 0.22/0.58     ( ( ( v1_relat_1 @ B ) & ( v5_relat_1 @ B @ A ) ) =>
% 0.22/0.58       ( ( v2_funct_2 @ B @ A ) <=> ( ( k2_relat_1 @ B ) = ( A ) ) ) ))).
% 0.22/0.58  thf('17', plain,
% 0.22/0.58      (![X27 : $i, X28 : $i]:
% 0.22/0.58         (((k2_relat_1 @ X28) != (X27))
% 0.22/0.58          | (v2_funct_2 @ X28 @ X27)
% 0.22/0.58          | ~ (v5_relat_1 @ X28 @ X27)
% 0.22/0.58          | ~ (v1_relat_1 @ X28))),
% 0.22/0.58      inference('cnf', [status(esa)], [d3_funct_2])).
% 0.22/0.58  thf('18', plain,
% 0.22/0.58      (![X28 : $i]:
% 0.22/0.58         (~ (v1_relat_1 @ X28)
% 0.22/0.58          | ~ (v5_relat_1 @ X28 @ (k2_relat_1 @ X28))
% 0.22/0.58          | (v2_funct_2 @ X28 @ (k2_relat_1 @ X28)))),
% 0.22/0.58      inference('simplify', [status(thm)], ['17'])).
% 0.22/0.58  thf('19', plain,
% 0.22/0.58      ((~ (v5_relat_1 @ sk_D @ sk_A)
% 0.22/0.58        | (v2_funct_2 @ sk_D @ (k2_relat_1 @ sk_D))
% 0.22/0.58        | ~ (v1_relat_1 @ sk_D))),
% 0.22/0.58      inference('sup-', [status(thm)], ['16', '18'])).
% 0.22/0.58  thf('20', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(cc2_relset_1, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i]:
% 0.22/0.58     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.58       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.22/0.58  thf('21', plain,
% 0.22/0.58      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.22/0.58         ((v5_relat_1 @ X16 @ X18)
% 0.22/0.58          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.22/0.58      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.22/0.58  thf('22', plain, ((v5_relat_1 @ sk_D @ sk_A)),
% 0.22/0.58      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.58  thf('23', plain, (((k2_relat_1 @ sk_D) = (sk_A))),
% 0.22/0.58      inference('demod', [status(thm)], ['9', '12', '13', '14', '15'])).
% 0.22/0.58  thf('24', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(cc1_relset_1, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i]:
% 0.22/0.58     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.58       ( v1_relat_1 @ C ) ))).
% 0.22/0.58  thf('25', plain,
% 0.22/0.58      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.58         ((v1_relat_1 @ X13)
% 0.22/0.58          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.22/0.58      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.22/0.58  thf('26', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.58      inference('sup-', [status(thm)], ['24', '25'])).
% 0.22/0.58  thf('27', plain, ((v2_funct_2 @ sk_D @ sk_A)),
% 0.22/0.58      inference('demod', [status(thm)], ['19', '22', '23', '26'])).
% 0.22/0.58  thf('28', plain,
% 0.22/0.58      ((~ (v2_funct_2 @ sk_D @ sk_A)) <= (~ ((v2_funct_2 @ sk_D @ sk_A)))),
% 0.22/0.58      inference('split', [status(esa)], ['0'])).
% 0.22/0.58  thf('29', plain, (((v2_funct_2 @ sk_D @ sk_A))),
% 0.22/0.58      inference('sup-', [status(thm)], ['27', '28'])).
% 0.22/0.58  thf('30', plain, (~ ((v2_funct_1 @ sk_C)) | ~ ((v2_funct_2 @ sk_D @ sk_A))),
% 0.22/0.58      inference('split', [status(esa)], ['0'])).
% 0.22/0.58  thf('31', plain, (~ ((v2_funct_1 @ sk_C))),
% 0.22/0.58      inference('sat_resolution*', [status(thm)], ['29', '30'])).
% 0.22/0.58  thf('32', plain, (~ (v2_funct_1 @ sk_C)),
% 0.22/0.58      inference('simpl_trail', [status(thm)], ['1', '31'])).
% 0.22/0.58  thf('33', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('34', plain,
% 0.22/0.58      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.58         ((v1_relat_1 @ X13)
% 0.22/0.58          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.22/0.58      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.22/0.58  thf('35', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.58      inference('sup-', [status(thm)], ['33', '34'])).
% 0.22/0.58  thf(cc1_funct_1, axiom,
% 0.22/0.58    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_funct_1 @ A ) ))).
% 0.22/0.58  thf('36', plain, (![X9 : $i]: ((v1_funct_1 @ X9) | ~ (v1_xboole_0 @ X9))),
% 0.22/0.58      inference('cnf', [status(esa)], [cc1_funct_1])).
% 0.22/0.58  thf(cc2_funct_1, axiom,
% 0.22/0.58    (![A:$i]:
% 0.22/0.58     ( ( ( v1_xboole_0 @ A ) & ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.22/0.58       ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) & ( v2_funct_1 @ A ) ) ))).
% 0.22/0.58  thf('37', plain,
% 0.22/0.58      (![X10 : $i]:
% 0.22/0.58         ((v2_funct_1 @ X10)
% 0.22/0.58          | ~ (v1_funct_1 @ X10)
% 0.22/0.58          | ~ (v1_relat_1 @ X10)
% 0.22/0.58          | ~ (v1_xboole_0 @ X10))),
% 0.22/0.58      inference('cnf', [status(esa)], [cc2_funct_1])).
% 0.22/0.58  thf('38', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         (~ (v1_xboole_0 @ X0)
% 0.22/0.58          | ~ (v1_xboole_0 @ X0)
% 0.22/0.58          | ~ (v1_relat_1 @ X0)
% 0.22/0.58          | (v2_funct_1 @ X0))),
% 0.22/0.58      inference('sup-', [status(thm)], ['36', '37'])).
% 0.22/0.58  thf('39', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         ((v2_funct_1 @ X0) | ~ (v1_relat_1 @ X0) | ~ (v1_xboole_0 @ X0))),
% 0.22/0.58      inference('simplify', [status(thm)], ['38'])).
% 0.22/0.58  thf('40', plain, ((~ (v1_xboole_0 @ sk_C) | (v2_funct_1 @ sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['35', '39'])).
% 0.22/0.58  thf(d1_xboole_0, axiom,
% 0.22/0.58    (![A:$i]:
% 0.22/0.58     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.22/0.58  thf('41', plain,
% 0.22/0.58      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.22/0.58      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.58  thf('42', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(t5_subset, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i]:
% 0.22/0.58     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.22/0.58          ( v1_xboole_0 @ C ) ) ))).
% 0.22/0.58  thf('43', plain,
% 0.22/0.58      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.22/0.58         (~ (r2_hidden @ X6 @ X7)
% 0.22/0.58          | ~ (v1_xboole_0 @ X8)
% 0.22/0.58          | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ X8)))),
% 0.22/0.58      inference('cnf', [status(esa)], [t5_subset])).
% 0.22/0.58  thf('44', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         (~ (v1_xboole_0 @ (k2_zfmisc_1 @ sk_A @ sk_B_1))
% 0.22/0.58          | ~ (r2_hidden @ X0 @ sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['42', '43'])).
% 0.22/0.58  thf('45', plain,
% 0.22/0.58      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.22/0.58        (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.22/0.58        (k6_partfun1 @ sk_A))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('46', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('47', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(dt_k1_partfun1, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.22/0.58     ( ( ( v1_funct_1 @ E ) & 
% 0.22/0.58         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.22/0.58         ( v1_funct_1 @ F ) & 
% 0.22/0.58         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.22/0.58       ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) ) & 
% 0.22/0.58         ( m1_subset_1 @
% 0.22/0.58           ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.22/0.58           ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ))).
% 0.22/0.58  thf('48', plain,
% 0.22/0.58      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X31)))
% 0.22/0.58          | ~ (v1_funct_1 @ X29)
% 0.22/0.58          | ~ (v1_funct_1 @ X32)
% 0.22/0.58          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34)))
% 0.22/0.58          | (m1_subset_1 @ (k1_partfun1 @ X30 @ X31 @ X33 @ X34 @ X29 @ X32) @ 
% 0.22/0.58             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X34))))),
% 0.22/0.58      inference('cnf', [status(esa)], [dt_k1_partfun1])).
% 0.22/0.58  thf('49', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.58         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1) @ 
% 0.22/0.58           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.22/0.58          | ~ (v1_funct_1 @ X1)
% 0.22/0.58          | ~ (v1_funct_1 @ sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['47', '48'])).
% 0.22/0.58  thf('50', plain, ((v1_funct_1 @ sk_C)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('51', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.58         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1) @ 
% 0.22/0.58           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.22/0.58          | ~ (v1_funct_1 @ X1))),
% 0.22/0.58      inference('demod', [status(thm)], ['49', '50'])).
% 0.22/0.58  thf('52', plain,
% 0.22/0.58      ((~ (v1_funct_1 @ sk_D)
% 0.22/0.58        | (m1_subset_1 @ 
% 0.22/0.58           (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.22/0.58           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['46', '51'])).
% 0.22/0.58  thf('53', plain, ((v1_funct_1 @ sk_D)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('54', plain,
% 0.22/0.58      ((m1_subset_1 @ 
% 0.22/0.58        (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.22/0.58        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.22/0.58      inference('demod', [status(thm)], ['52', '53'])).
% 0.22/0.58  thf(redefinition_r2_relset_1, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.58     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.22/0.58         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.58       ( ( r2_relset_1 @ A @ B @ C @ D ) <=> ( ( C ) = ( D ) ) ) ))).
% 0.22/0.58  thf('55', plain,
% 0.22/0.58      (![X22 : $i, X23 : $i, X24 : $i, X25 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.22/0.58          | ~ (m1_subset_1 @ X25 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.22/0.58          | ((X22) = (X25))
% 0.22/0.58          | ~ (r2_relset_1 @ X23 @ X24 @ X22 @ X25))),
% 0.22/0.58      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 0.22/0.58  thf('56', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         (~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.22/0.58             (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ X0)
% 0.22/0.58          | ((k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) = (X0))
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['54', '55'])).
% 0.22/0.58  thf('57', plain,
% 0.22/0.58      ((~ (m1_subset_1 @ (k6_partfun1 @ sk_A) @ 
% 0.22/0.58           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))
% 0.22/0.58        | ((k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D)
% 0.22/0.58            = (k6_partfun1 @ sk_A)))),
% 0.22/0.58      inference('sup-', [status(thm)], ['45', '56'])).
% 0.22/0.58  thf(t29_relset_1, axiom,
% 0.22/0.58    (![A:$i]:
% 0.22/0.58     ( m1_subset_1 @
% 0.22/0.58       ( k6_relat_1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ))).
% 0.22/0.58  thf('58', plain,
% 0.22/0.58      (![X26 : $i]:
% 0.22/0.58         (m1_subset_1 @ (k6_relat_1 @ X26) @ 
% 0.22/0.58          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X26 @ X26)))),
% 0.22/0.58      inference('cnf', [status(esa)], [t29_relset_1])).
% 0.22/0.58  thf(redefinition_k6_partfun1, axiom,
% 0.22/0.58    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.22/0.58  thf('59', plain, (![X35 : $i]: ((k6_partfun1 @ X35) = (k6_relat_1 @ X35))),
% 0.22/0.58      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.58  thf('60', plain,
% 0.22/0.58      (![X26 : $i]:
% 0.22/0.58         (m1_subset_1 @ (k6_partfun1 @ X26) @ 
% 0.22/0.58          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X26 @ X26)))),
% 0.22/0.58      inference('demod', [status(thm)], ['58', '59'])).
% 0.22/0.58  thf('61', plain,
% 0.22/0.58      (((k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D)
% 0.22/0.58         = (k6_partfun1 @ sk_A))),
% 0.22/0.58      inference('demod', [status(thm)], ['57', '60'])).
% 0.22/0.58  thf('62', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(t26_funct_2, axiom,
% 0.22/0.58    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.58     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.22/0.58         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.58       ( ![E:$i]:
% 0.22/0.58         ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 0.22/0.58             ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 0.22/0.58           ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) =>
% 0.22/0.58             ( ( ( ( C ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) | 
% 0.22/0.58               ( v2_funct_1 @ D ) ) ) ) ) ))).
% 0.22/0.58  thf('63', plain,
% 0.22/0.58      (![X40 : $i, X41 : $i, X42 : $i, X43 : $i, X44 : $i]:
% 0.22/0.58         (~ (v1_funct_1 @ X40)
% 0.22/0.58          | ~ (v1_funct_2 @ X40 @ X41 @ X42)
% 0.22/0.58          | ~ (m1_subset_1 @ X40 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X41 @ X42)))
% 0.22/0.58          | ~ (v2_funct_1 @ (k1_partfun1 @ X43 @ X41 @ X41 @ X42 @ X44 @ X40))
% 0.22/0.58          | (v2_funct_1 @ X44)
% 0.22/0.58          | ((X42) = (k1_xboole_0))
% 0.22/0.58          | ~ (m1_subset_1 @ X44 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X43 @ X41)))
% 0.22/0.58          | ~ (v1_funct_2 @ X44 @ X43 @ X41)
% 0.22/0.58          | ~ (v1_funct_1 @ X44))),
% 0.22/0.58      inference('cnf', [status(esa)], [t26_funct_2])).
% 0.22/0.58  thf('64', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (v1_funct_1 @ X0)
% 0.22/0.58          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B_1)
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B_1)))
% 0.22/0.58          | ((sk_A) = (k1_xboole_0))
% 0.22/0.58          | (v2_funct_1 @ X0)
% 0.22/0.58          | ~ (v2_funct_1 @ 
% 0.22/0.58               (k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D))
% 0.22/0.58          | ~ (v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)
% 0.22/0.58          | ~ (v1_funct_1 @ sk_D))),
% 0.22/0.58      inference('sup-', [status(thm)], ['62', '63'])).
% 0.22/0.58  thf('65', plain, ((v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('66', plain, ((v1_funct_1 @ sk_D)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('67', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (v1_funct_1 @ X0)
% 0.22/0.58          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B_1)
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B_1)))
% 0.22/0.58          | ((sk_A) = (k1_xboole_0))
% 0.22/0.58          | (v2_funct_1 @ X0)
% 0.22/0.58          | ~ (v2_funct_1 @ 
% 0.22/0.58               (k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D)))),
% 0.22/0.58      inference('demod', [status(thm)], ['64', '65', '66'])).
% 0.22/0.58  thf('68', plain,
% 0.22/0.58      ((~ (v2_funct_1 @ (k6_partfun1 @ sk_A))
% 0.22/0.58        | (v2_funct_1 @ sk_C)
% 0.22/0.58        | ((sk_A) = (k1_xboole_0))
% 0.22/0.58        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))
% 0.22/0.58        | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B_1)
% 0.22/0.58        | ~ (v1_funct_1 @ sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['61', '67'])).
% 0.22/0.58  thf(fc4_funct_1, axiom,
% 0.22/0.58    (![A:$i]:
% 0.22/0.58     ( ( v2_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.22/0.58       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.22/0.58  thf('69', plain, (![X12 : $i]: (v2_funct_1 @ (k6_relat_1 @ X12))),
% 0.22/0.58      inference('cnf', [status(esa)], [fc4_funct_1])).
% 0.22/0.58  thf('70', plain, (![X35 : $i]: ((k6_partfun1 @ X35) = (k6_relat_1 @ X35))),
% 0.22/0.58      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.58  thf('71', plain, (![X12 : $i]: (v2_funct_1 @ (k6_partfun1 @ X12))),
% 0.22/0.58      inference('demod', [status(thm)], ['69', '70'])).
% 0.22/0.58  thf('72', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('73', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B_1)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('74', plain, ((v1_funct_1 @ sk_C)),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('75', plain, (((v2_funct_1 @ sk_C) | ((sk_A) = (k1_xboole_0)))),
% 0.22/0.58      inference('demod', [status(thm)], ['68', '71', '72', '73', '74'])).
% 0.22/0.58  thf('76', plain, (~ (v2_funct_1 @ sk_C)),
% 0.22/0.58      inference('simpl_trail', [status(thm)], ['1', '31'])).
% 0.22/0.58  thf('77', plain, (((sk_A) = (k1_xboole_0))),
% 0.22/0.58      inference('clc', [status(thm)], ['75', '76'])).
% 0.22/0.58  thf(t113_zfmisc_1, axiom,
% 0.22/0.58    (![A:$i,B:$i]:
% 0.22/0.58     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.22/0.58       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.22/0.58  thf('78', plain,
% 0.22/0.58      (![X4 : $i, X5 : $i]:
% 0.22/0.58         (((k2_zfmisc_1 @ X4 @ X5) = (k1_xboole_0)) | ((X4) != (k1_xboole_0)))),
% 0.22/0.58      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.22/0.58  thf('79', plain,
% 0.22/0.58      (![X5 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X5) = (k1_xboole_0))),
% 0.22/0.58      inference('simplify', [status(thm)], ['78'])).
% 0.22/0.58  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.22/0.58  thf('80', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.22/0.58      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.22/0.58  thf('81', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ sk_C)),
% 0.22/0.58      inference('demod', [status(thm)], ['44', '77', '79', '80'])).
% 0.22/0.58  thf('82', plain, ((v1_xboole_0 @ sk_C)),
% 0.22/0.58      inference('sup-', [status(thm)], ['41', '81'])).
% 0.22/0.58  thf('83', plain, ((v2_funct_1 @ sk_C)),
% 0.22/0.58      inference('demod', [status(thm)], ['40', '82'])).
% 0.22/0.58  thf('84', plain, ($false), inference('demod', [status(thm)], ['32', '83'])).
% 0.22/0.58  
% 0.22/0.58  % SZS output end Refutation
% 0.22/0.58  
% 0.43/0.59  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
