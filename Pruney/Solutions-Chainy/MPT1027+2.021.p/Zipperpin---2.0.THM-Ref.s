%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.4HvI9Uwkpi

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:58:58 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   56 (  87 expanded)
%              Number of leaves         :   22 (  35 expanded)
%              Depth                    :    8
%              Number of atoms          :  322 ( 966 expanded)
%              Number of equality atoms :    7 (  29 expanded)
%              Maximal formula depth    :   13 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(t130_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( ( k1_relset_1 @ A @ B @ C )
          = A )
       => ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ( ( ( k1_relset_1 @ A @ B @ C )
            = A )
         => ( ( v1_funct_1 @ C )
            & ( v1_funct_2 @ C @ A @ B )
            & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t130_funct_2])).

thf('0',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B )
   <= ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ~ ( v1_funct_1 @ sk_C )
   <= ~ ( v1_funct_1 @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('4',plain,(
    v1_funct_1 @ sk_C ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,
    ( ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
   <= ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ) ),
    inference(split,[status(esa)],['0'])).

thf('7',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,
    ( ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
    | ~ ( v1_funct_1 @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('9',plain,(
    ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B ) ),
    inference('sat_resolution*',[status(thm)],['4','7','8'])).

thf('10',plain,(
    ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B ) ),
    inference(simpl_trail,[status(thm)],['1','9'])).

thf('11',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('12',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( v5_relat_1 @ X6 @ X8 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('13',plain,(
    v5_relat_1 @ sk_C @ sk_B ),
    inference('sup-',[status(thm)],['11','12'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('14',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( v5_relat_1 @ X2 @ X3 )
      | ( r1_tarski @ ( k2_relat_1 @ X2 ) @ X3 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('15',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('18',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('19',plain,(
    ! [X4: $i,X5: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('20',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['18','19'])).

thf('21',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ),
    inference(demod,[status(thm)],['15','20'])).

thf(t4_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A )
       => ( ( v1_funct_1 @ B )
          & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A )
          & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ) )).

thf('22',plain,(
    ! [X12: $i,X13: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X12 ) @ X13 )
      | ( v1_funct_2 @ X12 @ ( k1_relat_1 @ X12 ) @ X13 )
      | ~ ( v1_funct_1 @ X12 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t4_funct_2])).

thf('23',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_funct_1 @ sk_C )
    | ( v1_funct_2 @ sk_C @ ( k1_relat_1 @ sk_C ) @ sk_B ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['18','19'])).

thf('25',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('27',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( ( k1_relset_1 @ X10 @ X11 @ X9 )
        = ( k1_relat_1 @ X9 ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('28',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C )
    = sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,
    ( ( k1_relat_1 @ sk_C )
    = sk_A ),
    inference('sup+',[status(thm)],['28','29'])).

thf('31',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B ),
    inference(demod,[status(thm)],['23','24','25','30'])).

thf('32',plain,(
    $false ),
    inference(demod,[status(thm)],['10','31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.4HvI9Uwkpi
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:39:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 26 iterations in 0.013s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.47  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.20/0.47  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.47  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.47  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.20/0.47  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.20/0.47  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.47  thf(t130_funct_2, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.47         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47       ( ( ( k1_relset_1 @ A @ B @ C ) = ( A ) ) =>
% 0.20/0.47         ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.20/0.47           ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.47            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47          ( ( ( k1_relset_1 @ A @ B @ C ) = ( A ) ) =>
% 0.20/0.47            ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.20/0.47              ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t130_funct_2])).
% 0.20/0.47  thf('0', plain,
% 0.20/0.47      ((~ (v1_funct_1 @ sk_C)
% 0.20/0.47        | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B)
% 0.20/0.47        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B))))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      ((~ (v1_funct_2 @ sk_C @ sk_A @ sk_B))
% 0.20/0.47         <= (~ ((v1_funct_2 @ sk_C @ sk_A @ sk_B)))),
% 0.20/0.47      inference('split', [status(esa)], ['0'])).
% 0.20/0.47  thf('2', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('3', plain, ((~ (v1_funct_1 @ sk_C)) <= (~ ((v1_funct_1 @ sk_C)))),
% 0.20/0.47      inference('split', [status(esa)], ['0'])).
% 0.20/0.47  thf('4', plain, (((v1_funct_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['2', '3'])).
% 0.20/0.47  thf('5', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      ((~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B))))
% 0.20/0.47         <= (~
% 0.20/0.47             ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))))),
% 0.20/0.47      inference('split', [status(esa)], ['0'])).
% 0.20/0.47  thf('7', plain,
% 0.20/0.47      (((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B))))),
% 0.20/0.47      inference('sup-', [status(thm)], ['5', '6'])).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (~ ((v1_funct_2 @ sk_C @ sk_A @ sk_B)) | 
% 0.20/0.47       ~ ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))) | 
% 0.20/0.47       ~ ((v1_funct_1 @ sk_C))),
% 0.20/0.47      inference('split', [status(esa)], ['0'])).
% 0.20/0.47  thf('9', plain, (~ ((v1_funct_2 @ sk_C @ sk_A @ sk_B))),
% 0.20/0.47      inference('sat_resolution*', [status(thm)], ['4', '7', '8'])).
% 0.20/0.47  thf('10', plain, (~ (v1_funct_2 @ sk_C @ sk_A @ sk_B)),
% 0.20/0.47      inference('simpl_trail', [status(thm)], ['1', '9'])).
% 0.20/0.47  thf('11', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(cc2_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.47       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.20/0.47  thf('12', plain,
% 0.20/0.47      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.20/0.47         ((v5_relat_1 @ X6 @ X8)
% 0.20/0.47          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8))))),
% 0.20/0.47      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.47  thf('13', plain, ((v5_relat_1 @ sk_C @ sk_B)),
% 0.20/0.47      inference('sup-', [status(thm)], ['11', '12'])).
% 0.20/0.47  thf(d19_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ B ) =>
% 0.20/0.47       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.20/0.47  thf('14', plain,
% 0.20/0.47      (![X2 : $i, X3 : $i]:
% 0.20/0.47         (~ (v5_relat_1 @ X2 @ X3)
% 0.20/0.47          | (r1_tarski @ (k2_relat_1 @ X2) @ X3)
% 0.20/0.47          | ~ (v1_relat_1 @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.20/0.47  thf('15', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ sk_C) | (r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B))),
% 0.20/0.47      inference('sup-', [status(thm)], ['13', '14'])).
% 0.20/0.47  thf('16', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(cc2_relat_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ A ) =>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.20/0.47  thf('17', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.20/0.47          | (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_relat_1 @ X1))),
% 0.20/0.47      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.20/0.47  thf('18', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['16', '17'])).
% 0.20/0.47  thf(fc6_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.20/0.47  thf('19', plain,
% 0.20/0.47      (![X4 : $i, X5 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X4 @ X5))),
% 0.20/0.47      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.20/0.47  thf('20', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['18', '19'])).
% 0.20/0.47  thf('21', plain, ((r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B)),
% 0.20/0.47      inference('demod', [status(thm)], ['15', '20'])).
% 0.20/0.47  thf(t4_funct_2, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.47       ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) =>
% 0.20/0.47         ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A ) & 
% 0.20/0.47           ( m1_subset_1 @
% 0.20/0.47             B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ))).
% 0.20/0.47  thf('22', plain,
% 0.20/0.47      (![X12 : $i, X13 : $i]:
% 0.20/0.47         (~ (r1_tarski @ (k2_relat_1 @ X12) @ X13)
% 0.20/0.47          | (v1_funct_2 @ X12 @ (k1_relat_1 @ X12) @ X13)
% 0.20/0.47          | ~ (v1_funct_1 @ X12)
% 0.20/0.47          | ~ (v1_relat_1 @ X12))),
% 0.20/0.47      inference('cnf', [status(esa)], [t4_funct_2])).
% 0.20/0.47  thf('23', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ sk_C)
% 0.20/0.47        | ~ (v1_funct_1 @ sk_C)
% 0.20/0.47        | (v1_funct_2 @ sk_C @ (k1_relat_1 @ sk_C) @ sk_B))),
% 0.20/0.47      inference('sup-', [status(thm)], ['21', '22'])).
% 0.20/0.47  thf('24', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['18', '19'])).
% 0.20/0.47  thf('25', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('26', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(redefinition_k1_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.47       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.20/0.47  thf('27', plain,
% 0.20/0.47      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.20/0.47         (((k1_relset_1 @ X10 @ X11 @ X9) = (k1_relat_1 @ X9))
% 0.20/0.47          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.20/0.47  thf('28', plain,
% 0.20/0.47      (((k1_relset_1 @ sk_A @ sk_B @ sk_C) = (k1_relat_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['26', '27'])).
% 0.20/0.47  thf('29', plain, (((k1_relset_1 @ sk_A @ sk_B @ sk_C) = (sk_A))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('30', plain, (((k1_relat_1 @ sk_C) = (sk_A))),
% 0.20/0.47      inference('sup+', [status(thm)], ['28', '29'])).
% 0.20/0.47  thf('31', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B)),
% 0.20/0.47      inference('demod', [status(thm)], ['23', '24', '25', '30'])).
% 0.20/0.47  thf('32', plain, ($false), inference('demod', [status(thm)], ['10', '31'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
