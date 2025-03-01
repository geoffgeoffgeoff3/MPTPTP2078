%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.WctEC6wfZB

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:29 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :   63 ( 104 expanded)
%              Number of leaves         :   27 (  43 expanded)
%              Depth                    :   13
%              Number of atoms          :  413 ( 870 expanded)
%              Number of equality atoms :    8 (  11 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k6_relset_1_type,type,(
    k6_relset_1: $i > $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

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
    ! [X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( ( k6_relset_1 @ X21 @ X22 @ X19 @ X20 )
        = ( k8_relat_1 @ X19 @ X20 ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_relset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D )
      = ( k8_relat_1 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( m1_subset_1 @ ( k8_relat_1 @ sk_B @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['0','3'])).

thf(dt_k8_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( v1_relat_1 @ ( k8_relat_1 @ A @ B ) ) ) )).

thf('5',plain,(
    ! [X3: $i,X4: $i] :
      ( ( v1_relat_1 @ ( k8_relat_1 @ X3 @ X4 ) )
      | ~ ( v1_relat_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[dt_k8_relat_1])).

thf(t116_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ) )).

thf('6',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X5 @ X6 ) ) @ X5 )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t116_relat_1])).

thf('7',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('8',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v4_relat_1 @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('9',plain,(
    v4_relat_1 @ sk_D @ sk_C ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t209_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( B
        = ( k7_relat_1 @ B @ A ) ) ) )).

thf('10',plain,(
    ! [X7: $i,X8: $i] :
      ( ( X7
        = ( k7_relat_1 @ X7 @ X8 ) )
      | ~ ( v4_relat_1 @ X7 @ X8 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t209_relat_1])).

thf('11',plain,
    ( ~ ( v1_relat_1 @ sk_D )
    | ( sk_D
      = ( k7_relat_1 @ sk_D @ sk_C ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('13',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( v1_relat_1 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('14',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,
    ( sk_D
    = ( k7_relat_1 @ sk_D @ sk_C ) ),
    inference(demod,[status(thm)],['11','14'])).

thf(t87_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ) )).

thf('16',plain,(
    ! [X9: $i,X10: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X9 @ X10 ) ) @ X10 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t87_relat_1])).

thf(l29_wellord1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ ( k1_relat_1 @ B ) ) ) )).

thf('17',plain,(
    ! [X11: $i,X12: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X11 @ X12 ) ) @ ( k1_relat_1 @ X12 ) )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[l29_wellord1])).

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
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X1 @ X0 ) ) @ X2 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X2 @ ( k7_relat_1 @ X1 @ X0 ) ) ) @ X0 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['16','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_D )
      | ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X0 @ ( k7_relat_1 @ sk_D @ sk_C ) ) ) @ sk_C )
      | ~ ( v1_relat_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['15','20'])).

thf('22',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['12','13'])).

thf('23',plain,
    ( sk_D
    = ( k7_relat_1 @ sk_D @ sk_C ) ),
    inference(demod,[status(thm)],['11','14'])).

thf('24',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['12','13'])).

thf('25',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['21','22','23','24'])).

thf(t11_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A )
          & ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) )
       => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf('26',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X23 ) @ X24 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X23 ) @ X25 )
      | ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t11_relset_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) )
      | ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_D )
      | ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) )
      | ~ ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['6','27'])).

thf('29',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['12','13'])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) )
      | ~ ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_D )
      | ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['5','30'])).

thf('32',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['12','13'])).

thf('33',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ),
    inference(demod,[status(thm)],['31','32'])).

thf('34',plain,(
    $false ),
    inference(demod,[status(thm)],['4','33'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.WctEC6wfZB
% 0.12/0.36  % Computer   : n011.cluster.edu
% 0.12/0.36  % Model      : x86_64 x86_64
% 0.12/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.36  % Memory     : 8042.1875MB
% 0.12/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.36  % CPULimit   : 60
% 0.12/0.36  % DateTime   : Tue Dec  1 15:02:27 EST 2020
% 0.12/0.36  % CPUTime    : 
% 0.12/0.36  % Running portfolio for 600 s
% 0.12/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.36  % Number of cores: 8
% 0.12/0.36  % Python version: Python 3.6.8
% 0.12/0.37  % Running in FO mode
% 0.23/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.23/0.53  % Solved by: fo/fo7.sh
% 0.23/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.23/0.53  % done 61 iterations in 0.058s
% 0.23/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.23/0.53  % SZS output start Refutation
% 0.23/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.23/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.23/0.53  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.23/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.23/0.53  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.23/0.53  thf(sk_D_type, type, sk_D: $i).
% 0.23/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.23/0.53  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.23/0.53  thf(k6_relset_1_type, type, k6_relset_1: $i > $i > $i > $i > $i).
% 0.23/0.53  thf(sk_C_type, type, sk_C: $i).
% 0.23/0.53  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.23/0.53  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.23/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.23/0.53  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.23/0.53  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.23/0.53  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.23/0.53  thf(t35_relset_1, conjecture,
% 0.23/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.23/0.53     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.23/0.53       ( m1_subset_1 @
% 0.23/0.53         ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.23/0.53         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ))).
% 0.23/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.23/0.53    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.23/0.53        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.23/0.53          ( m1_subset_1 @
% 0.23/0.53            ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.23/0.53            ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) )),
% 0.23/0.53    inference('cnf.neg', [status(esa)], [t35_relset_1])).
% 0.23/0.53  thf('0', plain,
% 0.23/0.53      (~ (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ sk_B @ sk_D) @ 
% 0.23/0.53          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.23/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.53  thf('1', plain,
% 0.23/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.23/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.53  thf(redefinition_k6_relset_1, axiom,
% 0.23/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.23/0.53     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.23/0.53       ( ( k6_relset_1 @ A @ B @ C @ D ) = ( k8_relat_1 @ C @ D ) ) ))).
% 0.23/0.53  thf('2', plain,
% 0.23/0.53      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.23/0.53         (((k6_relset_1 @ X21 @ X22 @ X19 @ X20) = (k8_relat_1 @ X19 @ X20))
% 0.23/0.53          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22))))),
% 0.23/0.53      inference('cnf', [status(esa)], [redefinition_k6_relset_1])).
% 0.23/0.53  thf('3', plain,
% 0.23/0.53      (![X0 : $i]:
% 0.23/0.53         ((k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) = (k8_relat_1 @ X0 @ sk_D))),
% 0.23/0.53      inference('sup-', [status(thm)], ['1', '2'])).
% 0.23/0.53  thf('4', plain,
% 0.23/0.53      (~ (m1_subset_1 @ (k8_relat_1 @ sk_B @ sk_D) @ 
% 0.23/0.53          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.23/0.53      inference('demod', [status(thm)], ['0', '3'])).
% 0.23/0.53  thf(dt_k8_relat_1, axiom,
% 0.23/0.53    (![A:$i,B:$i]:
% 0.23/0.53     ( ( v1_relat_1 @ B ) => ( v1_relat_1 @ ( k8_relat_1 @ A @ B ) ) ))).
% 0.23/0.53  thf('5', plain,
% 0.23/0.53      (![X3 : $i, X4 : $i]:
% 0.23/0.53         ((v1_relat_1 @ (k8_relat_1 @ X3 @ X4)) | ~ (v1_relat_1 @ X4))),
% 0.23/0.53      inference('cnf', [status(esa)], [dt_k8_relat_1])).
% 0.23/0.53  thf(t116_relat_1, axiom,
% 0.23/0.53    (![A:$i,B:$i]:
% 0.23/0.53     ( ( v1_relat_1 @ B ) =>
% 0.23/0.53       ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ))).
% 0.23/0.53  thf('6', plain,
% 0.23/0.53      (![X5 : $i, X6 : $i]:
% 0.23/0.53         ((r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X5 @ X6)) @ X5)
% 0.23/0.53          | ~ (v1_relat_1 @ X6))),
% 0.23/0.53      inference('cnf', [status(esa)], [t116_relat_1])).
% 0.23/0.53  thf('7', plain,
% 0.23/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.23/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.53  thf(cc2_relset_1, axiom,
% 0.23/0.53    (![A:$i,B:$i,C:$i]:
% 0.23/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.23/0.53       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.23/0.53  thf('8', plain,
% 0.23/0.53      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.23/0.53         ((v4_relat_1 @ X16 @ X17)
% 0.23/0.53          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.23/0.53      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.23/0.53  thf('9', plain, ((v4_relat_1 @ sk_D @ sk_C)),
% 0.23/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.23/0.53  thf(t209_relat_1, axiom,
% 0.23/0.53    (![A:$i,B:$i]:
% 0.23/0.53     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.23/0.53       ( ( B ) = ( k7_relat_1 @ B @ A ) ) ))).
% 0.23/0.53  thf('10', plain,
% 0.23/0.53      (![X7 : $i, X8 : $i]:
% 0.23/0.53         (((X7) = (k7_relat_1 @ X7 @ X8))
% 0.23/0.53          | ~ (v4_relat_1 @ X7 @ X8)
% 0.23/0.53          | ~ (v1_relat_1 @ X7))),
% 0.23/0.53      inference('cnf', [status(esa)], [t209_relat_1])).
% 0.23/0.53  thf('11', plain,
% 0.23/0.53      ((~ (v1_relat_1 @ sk_D) | ((sk_D) = (k7_relat_1 @ sk_D @ sk_C)))),
% 0.23/0.53      inference('sup-', [status(thm)], ['9', '10'])).
% 0.23/0.53  thf('12', plain,
% 0.23/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.23/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.53  thf(cc1_relset_1, axiom,
% 0.23/0.53    (![A:$i,B:$i,C:$i]:
% 0.23/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.23/0.53       ( v1_relat_1 @ C ) ))).
% 0.23/0.53  thf('13', plain,
% 0.23/0.53      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.23/0.53         ((v1_relat_1 @ X13)
% 0.23/0.53          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.23/0.53      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.23/0.53  thf('14', plain, ((v1_relat_1 @ sk_D)),
% 0.23/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.23/0.53  thf('15', plain, (((sk_D) = (k7_relat_1 @ sk_D @ sk_C))),
% 0.23/0.53      inference('demod', [status(thm)], ['11', '14'])).
% 0.23/0.53  thf(t87_relat_1, axiom,
% 0.23/0.53    (![A:$i,B:$i]:
% 0.23/0.53     ( ( v1_relat_1 @ B ) =>
% 0.23/0.53       ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ))).
% 0.23/0.53  thf('16', plain,
% 0.23/0.53      (![X9 : $i, X10 : $i]:
% 0.23/0.53         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X9 @ X10)) @ X10)
% 0.23/0.53          | ~ (v1_relat_1 @ X9))),
% 0.23/0.53      inference('cnf', [status(esa)], [t87_relat_1])).
% 0.23/0.53  thf(l29_wellord1, axiom,
% 0.23/0.53    (![A:$i,B:$i]:
% 0.23/0.53     ( ( v1_relat_1 @ B ) =>
% 0.23/0.53       ( r1_tarski @
% 0.23/0.53         ( k1_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ ( k1_relat_1 @ B ) ) ))).
% 0.23/0.53  thf('17', plain,
% 0.23/0.53      (![X11 : $i, X12 : $i]:
% 0.23/0.53         ((r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X11 @ X12)) @ 
% 0.23/0.53           (k1_relat_1 @ X12))
% 0.23/0.53          | ~ (v1_relat_1 @ X12))),
% 0.23/0.53      inference('cnf', [status(esa)], [l29_wellord1])).
% 0.23/0.53  thf(t1_xboole_1, axiom,
% 0.23/0.53    (![A:$i,B:$i,C:$i]:
% 0.23/0.53     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.23/0.53       ( r1_tarski @ A @ C ) ))).
% 0.23/0.53  thf('18', plain,
% 0.23/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.23/0.53         (~ (r1_tarski @ X0 @ X1)
% 0.23/0.53          | ~ (r1_tarski @ X1 @ X2)
% 0.23/0.53          | (r1_tarski @ X0 @ X2))),
% 0.23/0.53      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.23/0.53  thf('19', plain,
% 0.23/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.23/0.53         (~ (v1_relat_1 @ X0)
% 0.23/0.53          | (r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X1 @ X0)) @ X2)
% 0.23/0.53          | ~ (r1_tarski @ (k1_relat_1 @ X0) @ X2))),
% 0.23/0.53      inference('sup-', [status(thm)], ['17', '18'])).
% 0.23/0.53  thf('20', plain,
% 0.23/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.23/0.53         (~ (v1_relat_1 @ X1)
% 0.23/0.53          | (r1_tarski @ 
% 0.23/0.53             (k1_relat_1 @ (k8_relat_1 @ X2 @ (k7_relat_1 @ X1 @ X0))) @ X0)
% 0.23/0.53          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X0)))),
% 0.23/0.53      inference('sup-', [status(thm)], ['16', '19'])).
% 0.23/0.53  thf('21', plain,
% 0.23/0.53      (![X0 : $i]:
% 0.23/0.53         (~ (v1_relat_1 @ sk_D)
% 0.23/0.53          | (r1_tarski @ 
% 0.23/0.53             (k1_relat_1 @ (k8_relat_1 @ X0 @ (k7_relat_1 @ sk_D @ sk_C))) @ 
% 0.23/0.53             sk_C)
% 0.23/0.53          | ~ (v1_relat_1 @ sk_D))),
% 0.23/0.53      inference('sup-', [status(thm)], ['15', '20'])).
% 0.23/0.53  thf('22', plain, ((v1_relat_1 @ sk_D)),
% 0.23/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.23/0.53  thf('23', plain, (((sk_D) = (k7_relat_1 @ sk_D @ sk_C))),
% 0.23/0.53      inference('demod', [status(thm)], ['11', '14'])).
% 0.23/0.53  thf('24', plain, ((v1_relat_1 @ sk_D)),
% 0.23/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.23/0.53  thf('25', plain,
% 0.23/0.53      (![X0 : $i]: (r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ sk_C)),
% 0.23/0.53      inference('demod', [status(thm)], ['21', '22', '23', '24'])).
% 0.23/0.53  thf(t11_relset_1, axiom,
% 0.23/0.53    (![A:$i,B:$i,C:$i]:
% 0.23/0.53     ( ( v1_relat_1 @ C ) =>
% 0.23/0.53       ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A ) & 
% 0.23/0.53           ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) ) =>
% 0.23/0.53         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 0.23/0.53  thf('26', plain,
% 0.23/0.53      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.23/0.53         (~ (r1_tarski @ (k1_relat_1 @ X23) @ X24)
% 0.23/0.53          | ~ (r1_tarski @ (k2_relat_1 @ X23) @ X25)
% 0.23/0.53          | (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25)))
% 0.23/0.53          | ~ (v1_relat_1 @ X23))),
% 0.23/0.53      inference('cnf', [status(esa)], [t11_relset_1])).
% 0.23/0.53  thf('27', plain,
% 0.23/0.53      (![X0 : $i, X1 : $i]:
% 0.23/0.53         (~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D))
% 0.23/0.53          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.23/0.53             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.23/0.53          | ~ (r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ X1))),
% 0.23/0.53      inference('sup-', [status(thm)], ['25', '26'])).
% 0.23/0.53  thf('28', plain,
% 0.23/0.53      (![X0 : $i]:
% 0.23/0.53         (~ (v1_relat_1 @ sk_D)
% 0.23/0.53          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.23/0.53             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))
% 0.23/0.53          | ~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)))),
% 0.23/0.53      inference('sup-', [status(thm)], ['6', '27'])).
% 0.23/0.53  thf('29', plain, ((v1_relat_1 @ sk_D)),
% 0.23/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.23/0.53  thf('30', plain,
% 0.23/0.53      (![X0 : $i]:
% 0.23/0.53         ((m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.23/0.53           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))
% 0.23/0.53          | ~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)))),
% 0.23/0.53      inference('demod', [status(thm)], ['28', '29'])).
% 0.23/0.53  thf('31', plain,
% 0.23/0.53      (![X0 : $i]:
% 0.23/0.53         (~ (v1_relat_1 @ sk_D)
% 0.23/0.53          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.23/0.53             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0))))),
% 0.23/0.53      inference('sup-', [status(thm)], ['5', '30'])).
% 0.23/0.53  thf('32', plain, ((v1_relat_1 @ sk_D)),
% 0.23/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.23/0.53  thf('33', plain,
% 0.23/0.53      (![X0 : $i]:
% 0.23/0.53         (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.23/0.53          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))),
% 0.23/0.53      inference('demod', [status(thm)], ['31', '32'])).
% 0.23/0.53  thf('34', plain, ($false), inference('demod', [status(thm)], ['4', '33'])).
% 0.23/0.53  
% 0.23/0.53  % SZS output end Refutation
% 0.23/0.53  
% 0.23/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
