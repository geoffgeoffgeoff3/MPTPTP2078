%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.xWVIJ7NGpR

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:30 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   59 (  93 expanded)
%              Number of leaves         :   24 (  39 expanded)
%              Depth                    :   12
%              Number of atoms          :  434 ( 862 expanded)
%              Number of equality atoms :    5 (   9 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k6_relset_1_type,type,(
    k6_relset_1: $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(t35_relset_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) )
     => ( m1_subset_1 @ ( k6_relset_1 @ C @ A @ B @ D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) )
       => ( m1_subset_1 @ ( k6_relset_1 @ C @ A @ B @ D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t35_relset_1])).

thf('0',plain,(
    ~ ( m1_subset_1 @ ( k6_relset_1 @ sk_C @ sk_A @ sk_B @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k6_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k6_relset_1 @ A @ B @ C @ D )
        = ( k8_relat_1 @ C @ D ) ) ) )).

thf('2',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i] :
      ( ( ( k6_relset_1 @ X17 @ X18 @ X15 @ X16 )
        = ( k8_relat_1 @ X15 @ X16 ) )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_relset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D )
      = ( k8_relat_1 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( m1_subset_1 @ ( k8_relat_1 @ sk_B @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['0','3'])).

thf(t116_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ) )).

thf('5',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X6 @ X7 ) ) @ X6 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t116_relat_1])).

thf('6',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k6_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k6_relset_1 @ A @ B @ C @ D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) )).

thf('7',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( m1_subset_1 @ ( k6_relset_1 @ X11 @ X12 @ X13 @ X14 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_relset_1])).

thf('8',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('9',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( v4_relat_1 @ X8 @ X9 )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X9 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('10',plain,(
    ! [X0: $i] :
      ( v4_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) @ sk_C ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(d18_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v4_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('11',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( v4_relat_1 @ X2 @ X3 )
      | ( r1_tarski @ ( k1_relat_1 @ X2 ) @ X3 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d18_relat_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) )
      | ( r1_tarski @ ( k1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) @ sk_C ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('15',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) )
      | ( v1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('16',plain,(
    ! [X4: $i,X5: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('17',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) ),
    inference(demod,[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['12','17'])).

thf(t11_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A )
          & ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) )
       => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf('19',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X19 ) @ X20 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X19 ) @ X21 )
      | ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t11_relset_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) )
      | ( m1_subset_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) ),
    inference(demod,[status(thm)],['15','16'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D ) ) @ X1 ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D )
      = ( k8_relat_1 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D )
      = ( k8_relat_1 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ X1 ) ) ),
    inference(demod,[status(thm)],['22','23','24'])).

thf('26',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_D )
      | ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['5','25'])).

thf('27',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('29',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) )
    | ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X4: $i,X5: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('31',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ),
    inference(demod,[status(thm)],['26','31'])).

thf('33',plain,(
    $false ),
    inference(demod,[status(thm)],['4','32'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.xWVIJ7NGpR
% 0.13/0.34  % Computer   : n010.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:35:59 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.49  % Solved by: fo/fo7.sh
% 0.20/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.49  % done 50 iterations in 0.031s
% 0.20/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.49  % SZS output start Refutation
% 0.20/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.49  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.20/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.49  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.20/0.49  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.20/0.49  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.49  thf(k6_relset_1_type, type, k6_relset_1: $i > $i > $i > $i > $i).
% 0.20/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.49  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.49  thf(t35_relset_1, conjecture,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.20/0.49       ( m1_subset_1 @
% 0.20/0.49         ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.20/0.49         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ))).
% 0.20/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.49    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.20/0.49          ( m1_subset_1 @
% 0.20/0.49            ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.20/0.49            ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) )),
% 0.20/0.49    inference('cnf.neg', [status(esa)], [t35_relset_1])).
% 0.20/0.49  thf('0', plain,
% 0.20/0.49      (~ (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ sk_B @ sk_D) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('1', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(redefinition_k6_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.49       ( ( k6_relset_1 @ A @ B @ C @ D ) = ( k8_relat_1 @ C @ D ) ) ))).
% 0.20/0.49  thf('2', plain,
% 0.20/0.49      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.49         (((k6_relset_1 @ X17 @ X18 @ X15 @ X16) = (k8_relat_1 @ X15 @ X16))
% 0.20/0.49          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.20/0.49      inference('cnf', [status(esa)], [redefinition_k6_relset_1])).
% 0.20/0.49  thf('3', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) = (k8_relat_1 @ X0 @ sk_D))),
% 0.20/0.49      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.49  thf('4', plain,
% 0.20/0.49      (~ (m1_subset_1 @ (k8_relat_1 @ sk_B @ sk_D) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.20/0.49      inference('demod', [status(thm)], ['0', '3'])).
% 0.20/0.49  thf(t116_relat_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ B ) =>
% 0.20/0.49       ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ))).
% 0.20/0.49  thf('5', plain,
% 0.20/0.49      (![X6 : $i, X7 : $i]:
% 0.20/0.49         ((r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X6 @ X7)) @ X6)
% 0.20/0.49          | ~ (v1_relat_1 @ X7))),
% 0.20/0.49      inference('cnf', [status(esa)], [t116_relat_1])).
% 0.20/0.49  thf('6', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(dt_k6_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.49       ( m1_subset_1 @
% 0.20/0.49         ( k6_relset_1 @ A @ B @ C @ D ) @ 
% 0.20/0.49         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ))).
% 0.20/0.49  thf('7', plain,
% 0.20/0.49      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.49         ((m1_subset_1 @ (k6_relset_1 @ X11 @ X12 @ X13 @ X14) @ 
% 0.20/0.49           (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12)))
% 0.20/0.49          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 0.20/0.49      inference('cnf', [status(esa)], [dt_k6_relset_1])).
% 0.20/0.49  thf('8', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.49  thf(cc2_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.49       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.20/0.49  thf('9', plain,
% 0.20/0.49      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.49         ((v4_relat_1 @ X8 @ X9)
% 0.20/0.49          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X9 @ X10))))),
% 0.20/0.49      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.49  thf('10', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (v4_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) @ sk_C)),
% 0.20/0.49      inference('sup-', [status(thm)], ['8', '9'])).
% 0.20/0.49  thf(d18_relat_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ B ) =>
% 0.20/0.49       ( ( v4_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.20/0.49  thf('11', plain,
% 0.20/0.49      (![X2 : $i, X3 : $i]:
% 0.20/0.49         (~ (v4_relat_1 @ X2 @ X3)
% 0.20/0.49          | (r1_tarski @ (k1_relat_1 @ X2) @ X3)
% 0.20/0.49          | ~ (v1_relat_1 @ X2))),
% 0.20/0.49      inference('cnf', [status(esa)], [d18_relat_1])).
% 0.20/0.49  thf('12', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D))
% 0.20/0.49          | (r1_tarski @ 
% 0.20/0.49             (k1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D)) @ sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.49  thf('13', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.49  thf(cc2_relat_1, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ A ) =>
% 0.20/0.49       ( ![B:$i]:
% 0.20/0.49         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.20/0.49  thf('14', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.20/0.49          | (v1_relat_1 @ X0)
% 0.20/0.49          | ~ (v1_relat_1 @ X1))),
% 0.20/0.49      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.20/0.49  thf('15', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_C @ sk_A))
% 0.20/0.49          | (v1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['13', '14'])).
% 0.20/0.49  thf(fc6_relat_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.20/0.49  thf('16', plain,
% 0.20/0.49      (![X4 : $i, X5 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X4 @ X5))),
% 0.20/0.49      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.20/0.49  thf('17', plain,
% 0.20/0.49      (![X0 : $i]: (v1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D))),
% 0.20/0.49      inference('demod', [status(thm)], ['15', '16'])).
% 0.20/0.49  thf('18', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (r1_tarski @ (k1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D)) @ 
% 0.20/0.49          sk_C)),
% 0.20/0.49      inference('demod', [status(thm)], ['12', '17'])).
% 0.20/0.49  thf(t11_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ C ) =>
% 0.20/0.49       ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A ) & 
% 0.20/0.49           ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) ) =>
% 0.20/0.49         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 0.20/0.49  thf('19', plain,
% 0.20/0.49      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.20/0.49         (~ (r1_tarski @ (k1_relat_1 @ X19) @ X20)
% 0.20/0.49          | ~ (r1_tarski @ (k2_relat_1 @ X19) @ X21)
% 0.20/0.49          | (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.20/0.49          | ~ (v1_relat_1 @ X19))),
% 0.20/0.49      inference('cnf', [status(esa)], [t11_relset_1])).
% 0.20/0.49  thf('20', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D))
% 0.20/0.49          | (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) @ 
% 0.20/0.49             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.20/0.49          | ~ (r1_tarski @ 
% 0.20/0.49               (k2_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D)) @ X1))),
% 0.20/0.49      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.49  thf('21', plain,
% 0.20/0.49      (![X0 : $i]: (v1_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D))),
% 0.20/0.49      inference('demod', [status(thm)], ['15', '16'])).
% 0.20/0.49  thf('22', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         ((m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) @ 
% 0.20/0.49           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.20/0.49          | ~ (r1_tarski @ 
% 0.20/0.49               (k2_relat_1 @ (k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D)) @ X1))),
% 0.20/0.49      inference('demod', [status(thm)], ['20', '21'])).
% 0.20/0.49  thf('23', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) = (k8_relat_1 @ X0 @ sk_D))),
% 0.20/0.49      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.49  thf('24', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) = (k8_relat_1 @ X0 @ sk_D))),
% 0.20/0.49      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.49  thf('25', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         ((m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.49           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.20/0.49          | ~ (r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ X1))),
% 0.20/0.49      inference('demod', [status(thm)], ['22', '23', '24'])).
% 0.20/0.49  thf('26', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ sk_D)
% 0.20/0.49          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.49             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['5', '25'])).
% 0.20/0.49  thf('27', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('28', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.20/0.49          | (v1_relat_1 @ X0)
% 0.20/0.49          | ~ (v1_relat_1 @ X1))),
% 0.20/0.49      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.20/0.49  thf('29', plain,
% 0.20/0.49      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)) | (v1_relat_1 @ sk_D))),
% 0.20/0.49      inference('sup-', [status(thm)], ['27', '28'])).
% 0.20/0.49  thf('30', plain,
% 0.20/0.49      (![X4 : $i, X5 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X4 @ X5))),
% 0.20/0.49      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.20/0.49  thf('31', plain, ((v1_relat_1 @ sk_D)),
% 0.20/0.49      inference('demod', [status(thm)], ['29', '30'])).
% 0.20/0.49  thf('32', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))),
% 0.20/0.49      inference('demod', [status(thm)], ['26', '31'])).
% 0.20/0.49  thf('33', plain, ($false), inference('demod', [status(thm)], ['4', '32'])).
% 0.20/0.49  
% 0.20/0.49  % SZS output end Refutation
% 0.20/0.49  
% 0.20/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
