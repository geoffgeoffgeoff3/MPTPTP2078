%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.puJAbP65z2

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:22 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   56 (  76 expanded)
%              Number of leaves         :   24 (  33 expanded)
%              Depth                    :   13
%              Number of atoms          :  334 ( 630 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   14 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k5_relset_1_type,type,(
    k5_relset_1: $i > $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(t34_relset_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
     => ( ( r1_tarski @ B @ C )
       => ( r2_relset_1 @ B @ A @ ( k5_relset_1 @ B @ A @ D @ C ) @ D ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
       => ( ( r1_tarski @ B @ C )
         => ( r2_relset_1 @ B @ A @ ( k5_relset_1 @ B @ A @ D @ C ) @ D ) ) ) ),
    inference('cnf.neg',[status(esa)],[t34_relset_1])).

thf('0',plain,(
    ~ ( r2_relset_1 @ sk_B_1 @ sk_A @ ( k5_relset_1 @ sk_B_1 @ sk_A @ sk_D @ sk_C ) @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k5_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k5_relset_1 @ A @ B @ C @ D )
        = ( k7_relat_1 @ C @ D ) ) ) )).

thf('2',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ( ( k5_relset_1 @ X20 @ X21 @ X19 @ X22 )
        = ( k7_relat_1 @ X19 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k5_relset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( k5_relset_1 @ sk_B_1 @ sk_A @ sk_D @ X0 )
      = ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    r1_tarski @ sk_B_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('6',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v4_relat_1 @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('7',plain,(
    v4_relat_1 @ sk_D @ sk_B_1 ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t209_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( B
        = ( k7_relat_1 @ B @ A ) ) ) )).

thf('8',plain,(
    ! [X7: $i,X8: $i] :
      ( ( X7
        = ( k7_relat_1 @ X7 @ X8 ) )
      | ~ ( v4_relat_1 @ X7 @ X8 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t209_relat_1])).

thf('9',plain,
    ( ~ ( v1_relat_1 @ sk_D )
    | ( sk_D
      = ( k7_relat_1 @ sk_D @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('11',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( v1_relat_1 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('12',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,
    ( sk_D
    = ( k7_relat_1 @ sk_D @ sk_B_1 ) ),
    inference(demod,[status(thm)],['9','12'])).

thf(t87_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ) )).

thf('14',plain,(
    ! [X9: $i,X10: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X9 @ X10 ) ) @ X10 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t87_relat_1])).

thf('15',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_D ) @ sk_B_1 )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup+',[status(thm)],['13','14'])).

thf('16',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['10','11'])).

thf('17',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_D ) @ sk_B_1 ),
    inference(demod,[status(thm)],['15','16'])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ sk_D ) @ X0 )
      | ~ ( r1_tarski @ sk_B_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_D ) @ sk_C ),
    inference('sup-',[status(thm)],['4','19'])).

thf(t97_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k7_relat_1 @ B @ A )
          = B ) ) ) )).

thf('21',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X11 ) @ X12 )
      | ( ( k7_relat_1 @ X11 @ X12 )
        = X11 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t97_relat_1])).

thf('22',plain,
    ( ~ ( v1_relat_1 @ sk_D )
    | ( ( k7_relat_1 @ sk_D @ sk_C )
      = sk_D ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['10','11'])).

thf('24',plain,
    ( ( k7_relat_1 @ sk_D @ sk_C )
    = sk_D ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ~ ( r2_relset_1 @ sk_B_1 @ sk_A @ sk_D @ sk_D ) ),
    inference(demod,[status(thm)],['0','3','24'])).

thf('26',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(reflexivity_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( r2_relset_1 @ A @ B @ C @ C ) ) )).

thf('27',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i] :
      ( ( r2_relset_1 @ X23 @ X24 @ X25 @ X25 )
      | ~ ( m1_subset_1 @ X25 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) ) ) ),
    inference(cnf,[status(esa)],[reflexivity_r2_relset_1])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_relset_1 @ X2 @ X1 @ X0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference(condensation,[status(thm)],['27'])).

thf('29',plain,(
    r2_relset_1 @ sk_B_1 @ sk_A @ sk_D @ sk_D ),
    inference('sup-',[status(thm)],['26','28'])).

thf('30',plain,(
    $false ),
    inference(demod,[status(thm)],['25','29'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.puJAbP65z2
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:35:12 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.22/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.53  % Solved by: fo/fo7.sh
% 0.22/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.53  % done 133 iterations in 0.069s
% 0.22/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.53  % SZS output start Refutation
% 0.22/0.53  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.53  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.22/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.53  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.53  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.22/0.53  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.53  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.22/0.53  thf(k5_relset_1_type, type, k5_relset_1: $i > $i > $i > $i > $i).
% 0.22/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.53  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.53  thf(sk_D_type, type, sk_D: $i).
% 0.22/0.53  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.22/0.53  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.22/0.53  thf(t34_relset_1, conjecture,
% 0.22/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.22/0.53       ( ( r1_tarski @ B @ C ) =>
% 0.22/0.53         ( r2_relset_1 @ B @ A @ ( k5_relset_1 @ B @ A @ D @ C ) @ D ) ) ))).
% 0.22/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.53    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.53        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.22/0.53          ( ( r1_tarski @ B @ C ) =>
% 0.22/0.53            ( r2_relset_1 @ B @ A @ ( k5_relset_1 @ B @ A @ D @ C ) @ D ) ) ) )),
% 0.22/0.53    inference('cnf.neg', [status(esa)], [t34_relset_1])).
% 0.22/0.53  thf('0', plain,
% 0.22/0.53      (~ (r2_relset_1 @ sk_B_1 @ sk_A @ 
% 0.22/0.53          (k5_relset_1 @ sk_B_1 @ sk_A @ sk_D @ sk_C) @ sk_D)),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('1', plain,
% 0.22/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(redefinition_k5_relset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.53       ( ( k5_relset_1 @ A @ B @ C @ D ) = ( k7_relat_1 @ C @ D ) ) ))).
% 0.22/0.53  thf('2', plain,
% 0.22/0.53      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.22/0.53         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.22/0.53          | ((k5_relset_1 @ X20 @ X21 @ X19 @ X22) = (k7_relat_1 @ X19 @ X22)))),
% 0.22/0.53      inference('cnf', [status(esa)], [redefinition_k5_relset_1])).
% 0.22/0.53  thf('3', plain,
% 0.22/0.53      (![X0 : $i]:
% 0.22/0.53         ((k5_relset_1 @ sk_B_1 @ sk_A @ sk_D @ X0) = (k7_relat_1 @ sk_D @ X0))),
% 0.22/0.53      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.53  thf('4', plain, ((r1_tarski @ sk_B_1 @ sk_C)),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('5', plain,
% 0.22/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(cc2_relset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.53       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.22/0.53  thf('6', plain,
% 0.22/0.53      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.22/0.53         ((v4_relat_1 @ X16 @ X17)
% 0.22/0.53          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.22/0.53      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.22/0.53  thf('7', plain, ((v4_relat_1 @ sk_D @ sk_B_1)),
% 0.22/0.53      inference('sup-', [status(thm)], ['5', '6'])).
% 0.22/0.53  thf(t209_relat_1, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.22/0.53       ( ( B ) = ( k7_relat_1 @ B @ A ) ) ))).
% 0.22/0.53  thf('8', plain,
% 0.22/0.53      (![X7 : $i, X8 : $i]:
% 0.22/0.53         (((X7) = (k7_relat_1 @ X7 @ X8))
% 0.22/0.53          | ~ (v4_relat_1 @ X7 @ X8)
% 0.22/0.53          | ~ (v1_relat_1 @ X7))),
% 0.22/0.53      inference('cnf', [status(esa)], [t209_relat_1])).
% 0.22/0.53  thf('9', plain,
% 0.22/0.53      ((~ (v1_relat_1 @ sk_D) | ((sk_D) = (k7_relat_1 @ sk_D @ sk_B_1)))),
% 0.22/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.53  thf('10', plain,
% 0.22/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(cc1_relset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.53       ( v1_relat_1 @ C ) ))).
% 0.22/0.53  thf('11', plain,
% 0.22/0.53      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.53         ((v1_relat_1 @ X13)
% 0.22/0.53          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.22/0.53      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.22/0.53  thf('12', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.53      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.53  thf('13', plain, (((sk_D) = (k7_relat_1 @ sk_D @ sk_B_1))),
% 0.22/0.53      inference('demod', [status(thm)], ['9', '12'])).
% 0.22/0.53  thf(t87_relat_1, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( v1_relat_1 @ B ) =>
% 0.22/0.53       ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ))).
% 0.22/0.53  thf('14', plain,
% 0.22/0.53      (![X9 : $i, X10 : $i]:
% 0.22/0.53         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X9 @ X10)) @ X10)
% 0.22/0.53          | ~ (v1_relat_1 @ X9))),
% 0.22/0.53      inference('cnf', [status(esa)], [t87_relat_1])).
% 0.22/0.53  thf('15', plain,
% 0.22/0.53      (((r1_tarski @ (k1_relat_1 @ sk_D) @ sk_B_1) | ~ (v1_relat_1 @ sk_D))),
% 0.22/0.53      inference('sup+', [status(thm)], ['13', '14'])).
% 0.22/0.53  thf('16', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.53      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.53  thf('17', plain, ((r1_tarski @ (k1_relat_1 @ sk_D) @ sk_B_1)),
% 0.22/0.53      inference('demod', [status(thm)], ['15', '16'])).
% 0.22/0.53  thf(t1_xboole_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i]:
% 0.22/0.53     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.22/0.53       ( r1_tarski @ A @ C ) ))).
% 0.22/0.53  thf('18', plain,
% 0.22/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.53         (~ (r1_tarski @ X0 @ X1)
% 0.22/0.53          | ~ (r1_tarski @ X1 @ X2)
% 0.22/0.53          | (r1_tarski @ X0 @ X2))),
% 0.22/0.53      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.22/0.53  thf('19', plain,
% 0.22/0.53      (![X0 : $i]:
% 0.22/0.53         ((r1_tarski @ (k1_relat_1 @ sk_D) @ X0) | ~ (r1_tarski @ sk_B_1 @ X0))),
% 0.22/0.53      inference('sup-', [status(thm)], ['17', '18'])).
% 0.22/0.53  thf('20', plain, ((r1_tarski @ (k1_relat_1 @ sk_D) @ sk_C)),
% 0.22/0.53      inference('sup-', [status(thm)], ['4', '19'])).
% 0.22/0.53  thf(t97_relat_1, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( v1_relat_1 @ B ) =>
% 0.22/0.53       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.22/0.53         ( ( k7_relat_1 @ B @ A ) = ( B ) ) ) ))).
% 0.22/0.53  thf('21', plain,
% 0.22/0.53      (![X11 : $i, X12 : $i]:
% 0.22/0.53         (~ (r1_tarski @ (k1_relat_1 @ X11) @ X12)
% 0.22/0.53          | ((k7_relat_1 @ X11 @ X12) = (X11))
% 0.22/0.53          | ~ (v1_relat_1 @ X11))),
% 0.22/0.53      inference('cnf', [status(esa)], [t97_relat_1])).
% 0.22/0.53  thf('22', plain,
% 0.22/0.53      ((~ (v1_relat_1 @ sk_D) | ((k7_relat_1 @ sk_D @ sk_C) = (sk_D)))),
% 0.22/0.53      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.53  thf('23', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.53      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.53  thf('24', plain, (((k7_relat_1 @ sk_D @ sk_C) = (sk_D))),
% 0.22/0.53      inference('demod', [status(thm)], ['22', '23'])).
% 0.22/0.53  thf('25', plain, (~ (r2_relset_1 @ sk_B_1 @ sk_A @ sk_D @ sk_D)),
% 0.22/0.53      inference('demod', [status(thm)], ['0', '3', '24'])).
% 0.22/0.53  thf('26', plain,
% 0.22/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(reflexivity_r2_relset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.53     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.22/0.53         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.53       ( r2_relset_1 @ A @ B @ C @ C ) ))).
% 0.22/0.53  thf('27', plain,
% 0.22/0.53      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i]:
% 0.22/0.53         ((r2_relset_1 @ X23 @ X24 @ X25 @ X25)
% 0.22/0.53          | ~ (m1_subset_1 @ X25 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.22/0.53          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24))))),
% 0.22/0.53      inference('cnf', [status(esa)], [reflexivity_r2_relset_1])).
% 0.22/0.53  thf('28', plain,
% 0.22/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.53         ((r2_relset_1 @ X2 @ X1 @ X0 @ X0)
% 0.22/0.53          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.22/0.53      inference('condensation', [status(thm)], ['27'])).
% 0.22/0.53  thf('29', plain, ((r2_relset_1 @ sk_B_1 @ sk_A @ sk_D @ sk_D)),
% 0.22/0.53      inference('sup-', [status(thm)], ['26', '28'])).
% 0.22/0.53  thf('30', plain, ($false), inference('demod', [status(thm)], ['25', '29'])).
% 0.22/0.53  
% 0.22/0.53  % SZS output end Refutation
% 0.22/0.53  
% 0.22/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
