%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.NKgfhZZFDv

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:55:30 EST 2020

% Result     : Theorem 0.37s
% Output     : Refutation 0.37s
% Verified   : 
% Statistics : Number of formulae       :   79 ( 108 expanded)
%              Number of leaves         :   30 (  45 expanded)
%              Depth                    :   13
%              Number of atoms          :  685 (1838 expanded)
%              Number of equality atoms :   24 (  53 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(t37_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ~ ( ( B != k1_xboole_0 )
          & ? [D: $i] :
              ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
              & ( v1_funct_2 @ D @ B @ A )
              & ( v1_funct_1 @ D ) )
          & ~ ( v2_funct_1 @ C ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ~ ( ( B != k1_xboole_0 )
            & ? [D: $i] :
                ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
                & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
                & ( v1_funct_2 @ D @ B @ A )
                & ( v1_funct_1 @ D ) )
            & ~ ( v2_funct_1 @ C ) ) ) ),
    inference('cnf.neg',[status(esa)],[t37_funct_2])).

thf('0',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_subset_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_xboole_0 @ B ) ) ) )).

thf('1',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) )
      | ( v1_xboole_0 @ X3 )
      | ~ ( v1_xboole_0 @ X4 ) ) ),
    inference(cnf,[status(esa)],[cc1_subset_1])).

thf('2',plain,
    ( ~ ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_xboole_0 @ sk_C ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_xboole_0 @ A )
        & ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A )
        & ( v2_funct_1 @ A ) ) ) )).

thf('4',plain,(
    ! [X7: $i] :
      ( ( v2_funct_1 @ X7 )
      | ~ ( v1_funct_1 @ X7 )
      | ~ ( v1_relat_1 @ X7 )
      | ~ ( v1_xboole_0 @ X7 ) ) ),
    inference(cnf,[status(esa)],[cc2_funct_1])).

thf('5',plain,
    ( ~ ( v1_xboole_0 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C )
    | ( v2_funct_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(cc1_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_relat_1 @ A ) ) )).

thf('6',plain,(
    ! [X5: $i] :
      ( ( v1_relat_1 @ X5 )
      | ~ ( v1_xboole_0 @ X5 ) ) ),
    inference(cnf,[status(esa)],[cc1_relat_1])).

thf('7',plain,
    ( ( v2_funct_1 @ sk_C )
    | ~ ( v1_xboole_0 @ sk_C ) ),
    inference(clc,[status(thm)],['5','6'])).

thf('8',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    ~ ( v1_xboole_0 @ sk_C ) ),
    inference(clc,[status(thm)],['7','8'])).

thf('10',plain,(
    ~ ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(clc,[status(thm)],['2','9'])).

thf('11',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k6_partfun1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('12',plain,(
    ! [X21: $i] :
      ( ( k6_partfun1 @ X21 )
      = ( k6_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('13',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k6_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) )
        & ( m1_subset_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ) )).

thf('16',plain,(
    ! [X13: $i,X14: $i,X15: $i,X16: $i,X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) )
      | ( m1_subset_1 @ ( k1_partfun1 @ X14 @ X15 @ X17 @ X18 @ X13 @ X16 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_partfun1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,
    ( ~ ( v1_funct_1 @ sk_D )
    | ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['14','19'])).

thf('21',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf(redefinition_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_relset_1 @ A @ B @ C @ D )
      <=> ( C = D ) ) ) )).

thf('23',plain,(
    ! [X9: $i,X10: $i,X11: $i,X12: $i] :
      ( ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) )
      | ~ ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) )
      | ( X9 = X12 )
      | ~ ( r2_relset_1 @ X10 @ X11 @ X9 @ X12 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ X0 )
      | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
        = X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,
    ( ~ ( m1_subset_1 @ ( k6_relat_1 @ sk_A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) )
    | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
      = ( k6_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['13','24'])).

thf(dt_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( m1_subset_1 @ ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
      & ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ) )).

thf('26',plain,(
    ! [X20: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X20 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_partfun1])).

thf('27',plain,(
    ! [X21: $i] :
      ( ( k6_partfun1 @ X21 )
      = ( k6_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('28',plain,(
    ! [X20: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X20 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X20 ) ) ) ),
    inference(demod,[status(thm)],['26','27'])).

thf('29',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
    = ( k6_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['25','28'])).

thf('30',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
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

thf('31',plain,(
    ! [X22: $i,X23: $i,X24: $i,X25: $i,X26: $i] :
      ( ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_funct_2 @ X22 @ X23 @ X24 )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X25 @ X23 @ X23 @ X24 @ X26 @ X22 ) )
      | ( v2_funct_1 @ X26 )
      | ( X24 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X23 ) ) )
      | ~ ( v1_funct_2 @ X26 @ X25 @ X23 )
      | ~ ( v1_funct_1 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t26_funct_2])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( v2_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X1 @ sk_B @ sk_B @ sk_A @ X0 @ sk_D ) )
      | ~ ( v1_funct_2 @ sk_D @ sk_B @ sk_A )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    v1_funct_2 @ sk_D @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( v2_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X1 @ sk_B @ sk_B @ sk_A @ X0 @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['32','33','34'])).

thf('36',plain,
    ( ~ ( v2_funct_1 @ ( k6_relat_1 @ sk_A ) )
    | ( v2_funct_1 @ sk_C )
    | ( sk_A = k1_xboole_0 )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
    | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B )
    | ~ ( v1_funct_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['29','35'])).

thf(t52_funct_1,axiom,(
    ! [A: $i] :
      ( v2_funct_1 @ ( k6_relat_1 @ A ) ) )).

thf('37',plain,(
    ! [X8: $i] :
      ( v2_funct_1 @ ( k6_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t52_funct_1])).

thf('38',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,
    ( ( v2_funct_1 @ sk_C )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['36','37','38','39','40'])).

thf('42',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    sk_A = k1_xboole_0 ),
    inference(clc,[status(thm)],['41','42'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('44',plain,(
    ! [X1: $i,X2: $i] :
      ( ( ( k2_zfmisc_1 @ X1 @ X2 )
        = k1_xboole_0 )
      | ( X1 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('45',plain,(
    ! [X2: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X2 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['44'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('46',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('47',plain,(
    $false ),
    inference(demod,[status(thm)],['10','43','45','46'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.NKgfhZZFDv
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 13:26:54 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.37/0.56  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.37/0.56  % Solved by: fo/fo7.sh
% 0.37/0.56  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.37/0.56  % done 157 iterations in 0.111s
% 0.37/0.56  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.37/0.56  % SZS output start Refutation
% 0.37/0.56  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.37/0.56  thf(sk_A_type, type, sk_A: $i).
% 0.37/0.56  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.37/0.56  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.37/0.56  thf(sk_C_type, type, sk_C: $i).
% 0.37/0.56  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.37/0.56  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.37/0.56  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.37/0.56  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.37/0.56  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.37/0.56  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.37/0.56  thf(sk_D_type, type, sk_D: $i).
% 0.37/0.56  thf(sk_B_type, type, sk_B: $i).
% 0.37/0.56  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.37/0.56  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.37/0.56  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.37/0.56  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 0.37/0.56  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.37/0.56  thf(t37_funct_2, conjecture,
% 0.37/0.56    (![A:$i,B:$i,C:$i]:
% 0.37/0.56     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.37/0.56         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.37/0.56       ( ~( ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.37/0.56            ( ?[D:$i]:
% 0.37/0.56              ( ( r2_relset_1 @
% 0.37/0.56                  A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 0.37/0.56                  ( k6_partfun1 @ A ) ) & 
% 0.37/0.56                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) & 
% 0.37/0.56                ( v1_funct_2 @ D @ B @ A ) & ( v1_funct_1 @ D ) ) ) & 
% 0.37/0.56            ( ~( v2_funct_1 @ C ) ) ) ) ))).
% 0.37/0.56  thf(zf_stmt_0, negated_conjecture,
% 0.37/0.56    (~( ![A:$i,B:$i,C:$i]:
% 0.37/0.56        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.37/0.56            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.37/0.56          ( ~( ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.37/0.56               ( ?[D:$i]:
% 0.37/0.56                 ( ( r2_relset_1 @
% 0.37/0.56                     A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 0.37/0.56                     ( k6_partfun1 @ A ) ) & 
% 0.37/0.56                   ( m1_subset_1 @
% 0.37/0.56                     D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) & 
% 0.37/0.56                   ( v1_funct_2 @ D @ B @ A ) & ( v1_funct_1 @ D ) ) ) & 
% 0.37/0.56               ( ~( v2_funct_1 @ C ) ) ) ) ) )),
% 0.37/0.56    inference('cnf.neg', [status(esa)], [t37_funct_2])).
% 0.37/0.56  thf('0', plain,
% 0.37/0.56      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf(cc1_subset_1, axiom,
% 0.37/0.56    (![A:$i]:
% 0.37/0.56     ( ( v1_xboole_0 @ A ) =>
% 0.37/0.56       ( ![B:$i]:
% 0.37/0.56         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_xboole_0 @ B ) ) ) ))).
% 0.37/0.56  thf('1', plain,
% 0.37/0.56      (![X3 : $i, X4 : $i]:
% 0.37/0.56         (~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4))
% 0.37/0.56          | (v1_xboole_0 @ X3)
% 0.37/0.56          | ~ (v1_xboole_0 @ X4))),
% 0.37/0.56      inference('cnf', [status(esa)], [cc1_subset_1])).
% 0.37/0.56  thf('2', plain,
% 0.37/0.56      ((~ (v1_xboole_0 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_xboole_0 @ sk_C))),
% 0.37/0.56      inference('sup-', [status(thm)], ['0', '1'])).
% 0.37/0.56  thf('3', plain, ((v1_funct_1 @ sk_C)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf(cc2_funct_1, axiom,
% 0.37/0.56    (![A:$i]:
% 0.37/0.56     ( ( ( v1_xboole_0 @ A ) & ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.37/0.56       ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) & ( v2_funct_1 @ A ) ) ))).
% 0.37/0.56  thf('4', plain,
% 0.37/0.56      (![X7 : $i]:
% 0.37/0.56         ((v2_funct_1 @ X7)
% 0.37/0.56          | ~ (v1_funct_1 @ X7)
% 0.37/0.56          | ~ (v1_relat_1 @ X7)
% 0.37/0.56          | ~ (v1_xboole_0 @ X7))),
% 0.37/0.56      inference('cnf', [status(esa)], [cc2_funct_1])).
% 0.37/0.56  thf('5', plain,
% 0.37/0.56      ((~ (v1_xboole_0 @ sk_C) | ~ (v1_relat_1 @ sk_C) | (v2_funct_1 @ sk_C))),
% 0.37/0.56      inference('sup-', [status(thm)], ['3', '4'])).
% 0.37/0.56  thf(cc1_relat_1, axiom,
% 0.37/0.56    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_relat_1 @ A ) ))).
% 0.37/0.56  thf('6', plain, (![X5 : $i]: ((v1_relat_1 @ X5) | ~ (v1_xboole_0 @ X5))),
% 0.37/0.56      inference('cnf', [status(esa)], [cc1_relat_1])).
% 0.37/0.56  thf('7', plain, (((v2_funct_1 @ sk_C) | ~ (v1_xboole_0 @ sk_C))),
% 0.37/0.56      inference('clc', [status(thm)], ['5', '6'])).
% 0.37/0.56  thf('8', plain, (~ (v2_funct_1 @ sk_C)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('9', plain, (~ (v1_xboole_0 @ sk_C)),
% 0.37/0.56      inference('clc', [status(thm)], ['7', '8'])).
% 0.37/0.56  thf('10', plain, (~ (v1_xboole_0 @ (k2_zfmisc_1 @ sk_A @ sk_B))),
% 0.37/0.56      inference('clc', [status(thm)], ['2', '9'])).
% 0.37/0.56  thf('11', plain,
% 0.37/0.56      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.37/0.56        (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 0.37/0.56        (k6_partfun1 @ sk_A))),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf(redefinition_k6_partfun1, axiom,
% 0.37/0.56    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.37/0.56  thf('12', plain, (![X21 : $i]: ((k6_partfun1 @ X21) = (k6_relat_1 @ X21))),
% 0.37/0.56      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.37/0.56  thf('13', plain,
% 0.37/0.56      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.37/0.56        (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 0.37/0.56        (k6_relat_1 @ sk_A))),
% 0.37/0.56      inference('demod', [status(thm)], ['11', '12'])).
% 0.37/0.56  thf('14', plain,
% 0.37/0.56      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('15', plain,
% 0.37/0.56      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf(dt_k1_partfun1, axiom,
% 0.37/0.56    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.37/0.56     ( ( ( v1_funct_1 @ E ) & 
% 0.37/0.56         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.37/0.56         ( v1_funct_1 @ F ) & 
% 0.37/0.56         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.37/0.56       ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) ) & 
% 0.37/0.56         ( m1_subset_1 @
% 0.37/0.56           ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.37/0.56           ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ))).
% 0.37/0.56  thf('16', plain,
% 0.37/0.56      (![X13 : $i, X14 : $i, X15 : $i, X16 : $i, X17 : $i, X18 : $i]:
% 0.37/0.56         (~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15)))
% 0.37/0.56          | ~ (v1_funct_1 @ X13)
% 0.37/0.56          | ~ (v1_funct_1 @ X16)
% 0.37/0.56          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18)))
% 0.37/0.56          | (m1_subset_1 @ (k1_partfun1 @ X14 @ X15 @ X17 @ X18 @ X13 @ X16) @ 
% 0.37/0.56             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X18))))),
% 0.37/0.56      inference('cnf', [status(esa)], [dt_k1_partfun1])).
% 0.37/0.56  thf('17', plain,
% 0.37/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.56         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1) @ 
% 0.37/0.56           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.37/0.56          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.37/0.56          | ~ (v1_funct_1 @ X1)
% 0.37/0.56          | ~ (v1_funct_1 @ sk_C))),
% 0.37/0.56      inference('sup-', [status(thm)], ['15', '16'])).
% 0.37/0.56  thf('18', plain, ((v1_funct_1 @ sk_C)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('19', plain,
% 0.37/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.56         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1) @ 
% 0.37/0.56           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.37/0.56          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.37/0.56          | ~ (v1_funct_1 @ X1))),
% 0.37/0.56      inference('demod', [status(thm)], ['17', '18'])).
% 0.37/0.56  thf('20', plain,
% 0.37/0.56      ((~ (v1_funct_1 @ sk_D)
% 0.37/0.56        | (m1_subset_1 @ 
% 0.37/0.56           (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 0.37/0.56           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.37/0.56      inference('sup-', [status(thm)], ['14', '19'])).
% 0.37/0.56  thf('21', plain, ((v1_funct_1 @ sk_D)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('22', plain,
% 0.37/0.56      ((m1_subset_1 @ 
% 0.37/0.56        (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 0.37/0.56        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.37/0.56      inference('demod', [status(thm)], ['20', '21'])).
% 0.37/0.56  thf(redefinition_r2_relset_1, axiom,
% 0.37/0.56    (![A:$i,B:$i,C:$i,D:$i]:
% 0.37/0.56     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.37/0.56         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.37/0.56       ( ( r2_relset_1 @ A @ B @ C @ D ) <=> ( ( C ) = ( D ) ) ) ))).
% 0.37/0.56  thf('23', plain,
% 0.37/0.56      (![X9 : $i, X10 : $i, X11 : $i, X12 : $i]:
% 0.37/0.56         (~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11)))
% 0.37/0.56          | ~ (m1_subset_1 @ X12 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11)))
% 0.37/0.56          | ((X9) = (X12))
% 0.37/0.56          | ~ (r2_relset_1 @ X10 @ X11 @ X9 @ X12))),
% 0.37/0.56      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 0.37/0.56  thf('24', plain,
% 0.37/0.56      (![X0 : $i]:
% 0.37/0.56         (~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.37/0.56             (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ X0)
% 0.37/0.56          | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) = (X0))
% 0.37/0.56          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.37/0.56      inference('sup-', [status(thm)], ['22', '23'])).
% 0.37/0.56  thf('25', plain,
% 0.37/0.56      ((~ (m1_subset_1 @ (k6_relat_1 @ sk_A) @ 
% 0.37/0.56           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))
% 0.37/0.56        | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D)
% 0.37/0.56            = (k6_relat_1 @ sk_A)))),
% 0.37/0.56      inference('sup-', [status(thm)], ['13', '24'])).
% 0.37/0.56  thf(dt_k6_partfun1, axiom,
% 0.37/0.56    (![A:$i]:
% 0.37/0.56     ( ( m1_subset_1 @
% 0.37/0.56         ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) & 
% 0.37/0.56       ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ))).
% 0.37/0.56  thf('26', plain,
% 0.37/0.56      (![X20 : $i]:
% 0.37/0.56         (m1_subset_1 @ (k6_partfun1 @ X20) @ 
% 0.37/0.56          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X20)))),
% 0.37/0.56      inference('cnf', [status(esa)], [dt_k6_partfun1])).
% 0.37/0.56  thf('27', plain, (![X21 : $i]: ((k6_partfun1 @ X21) = (k6_relat_1 @ X21))),
% 0.37/0.56      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.37/0.56  thf('28', plain,
% 0.37/0.56      (![X20 : $i]:
% 0.37/0.56         (m1_subset_1 @ (k6_relat_1 @ X20) @ 
% 0.37/0.56          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X20)))),
% 0.37/0.56      inference('demod', [status(thm)], ['26', '27'])).
% 0.37/0.56  thf('29', plain,
% 0.37/0.56      (((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D)
% 0.37/0.56         = (k6_relat_1 @ sk_A))),
% 0.37/0.56      inference('demod', [status(thm)], ['25', '28'])).
% 0.37/0.56  thf('30', plain,
% 0.37/0.56      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf(t26_funct_2, axiom,
% 0.37/0.56    (![A:$i,B:$i,C:$i,D:$i]:
% 0.37/0.56     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.37/0.56         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.37/0.56       ( ![E:$i]:
% 0.37/0.56         ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 0.37/0.56             ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 0.37/0.56           ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) =>
% 0.37/0.56             ( ( ( ( C ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) | 
% 0.37/0.56               ( v2_funct_1 @ D ) ) ) ) ) ))).
% 0.37/0.56  thf('31', plain,
% 0.37/0.56      (![X22 : $i, X23 : $i, X24 : $i, X25 : $i, X26 : $i]:
% 0.37/0.56         (~ (v1_funct_1 @ X22)
% 0.37/0.56          | ~ (v1_funct_2 @ X22 @ X23 @ X24)
% 0.37/0.56          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.37/0.56          | ~ (v2_funct_1 @ (k1_partfun1 @ X25 @ X23 @ X23 @ X24 @ X26 @ X22))
% 0.37/0.56          | (v2_funct_1 @ X26)
% 0.37/0.56          | ((X24) = (k1_xboole_0))
% 0.37/0.56          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X23)))
% 0.37/0.56          | ~ (v1_funct_2 @ X26 @ X25 @ X23)
% 0.37/0.56          | ~ (v1_funct_1 @ X26))),
% 0.37/0.56      inference('cnf', [status(esa)], [t26_funct_2])).
% 0.37/0.56  thf('32', plain,
% 0.37/0.56      (![X0 : $i, X1 : $i]:
% 0.37/0.56         (~ (v1_funct_1 @ X0)
% 0.37/0.56          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B)
% 0.37/0.56          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B)))
% 0.37/0.56          | ((sk_A) = (k1_xboole_0))
% 0.37/0.56          | (v2_funct_1 @ X0)
% 0.37/0.56          | ~ (v2_funct_1 @ (k1_partfun1 @ X1 @ sk_B @ sk_B @ sk_A @ X0 @ sk_D))
% 0.37/0.56          | ~ (v1_funct_2 @ sk_D @ sk_B @ sk_A)
% 0.37/0.56          | ~ (v1_funct_1 @ sk_D))),
% 0.37/0.56      inference('sup-', [status(thm)], ['30', '31'])).
% 0.37/0.56  thf('33', plain, ((v1_funct_2 @ sk_D @ sk_B @ sk_A)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('34', plain, ((v1_funct_1 @ sk_D)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('35', plain,
% 0.37/0.56      (![X0 : $i, X1 : $i]:
% 0.37/0.56         (~ (v1_funct_1 @ X0)
% 0.37/0.56          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B)
% 0.37/0.56          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B)))
% 0.37/0.56          | ((sk_A) = (k1_xboole_0))
% 0.37/0.56          | (v2_funct_1 @ X0)
% 0.37/0.56          | ~ (v2_funct_1 @ (k1_partfun1 @ X1 @ sk_B @ sk_B @ sk_A @ X0 @ sk_D)))),
% 0.37/0.56      inference('demod', [status(thm)], ['32', '33', '34'])).
% 0.37/0.56  thf('36', plain,
% 0.37/0.56      ((~ (v2_funct_1 @ (k6_relat_1 @ sk_A))
% 0.37/0.56        | (v2_funct_1 @ sk_C)
% 0.37/0.56        | ((sk_A) = (k1_xboole_0))
% 0.37/0.56        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.37/0.56        | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B)
% 0.37/0.56        | ~ (v1_funct_1 @ sk_C))),
% 0.37/0.56      inference('sup-', [status(thm)], ['29', '35'])).
% 0.37/0.56  thf(t52_funct_1, axiom, (![A:$i]: ( v2_funct_1 @ ( k6_relat_1 @ A ) ))).
% 0.37/0.56  thf('37', plain, (![X8 : $i]: (v2_funct_1 @ (k6_relat_1 @ X8))),
% 0.37/0.56      inference('cnf', [status(esa)], [t52_funct_1])).
% 0.37/0.56  thf('38', plain,
% 0.37/0.56      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('39', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('40', plain, ((v1_funct_1 @ sk_C)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('41', plain, (((v2_funct_1 @ sk_C) | ((sk_A) = (k1_xboole_0)))),
% 0.37/0.56      inference('demod', [status(thm)], ['36', '37', '38', '39', '40'])).
% 0.37/0.56  thf('42', plain, (~ (v2_funct_1 @ sk_C)),
% 0.37/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.56  thf('43', plain, (((sk_A) = (k1_xboole_0))),
% 0.37/0.56      inference('clc', [status(thm)], ['41', '42'])).
% 0.37/0.56  thf(t113_zfmisc_1, axiom,
% 0.37/0.56    (![A:$i,B:$i]:
% 0.37/0.56     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.37/0.56       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.37/0.56  thf('44', plain,
% 0.37/0.56      (![X1 : $i, X2 : $i]:
% 0.37/0.56         (((k2_zfmisc_1 @ X1 @ X2) = (k1_xboole_0)) | ((X1) != (k1_xboole_0)))),
% 0.37/0.56      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.37/0.56  thf('45', plain,
% 0.37/0.56      (![X2 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X2) = (k1_xboole_0))),
% 0.37/0.56      inference('simplify', [status(thm)], ['44'])).
% 0.37/0.56  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.37/0.56  thf('46', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.37/0.56      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.37/0.56  thf('47', plain, ($false),
% 0.37/0.56      inference('demod', [status(thm)], ['10', '43', '45', '46'])).
% 0.37/0.56  
% 0.37/0.56  % SZS output end Refutation
% 0.37/0.56  
% 0.37/0.57  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
