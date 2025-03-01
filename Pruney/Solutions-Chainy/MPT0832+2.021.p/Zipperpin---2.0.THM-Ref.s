%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.0tzigURLM4

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:31 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 137 expanded)
%              Number of leaves         :   26 (  53 expanded)
%              Depth                    :   14
%              Number of atoms          :  428 (1049 expanded)
%              Number of equality atoms :    3 (   3 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k6_relset_1_type,type,(
    k6_relset_1: $i > $i > $i > $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

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

thf(t116_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ) )).

thf('5',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X12 @ X13 ) ) @ X12 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t116_relat_1])).

thf('6',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('7',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('8',plain,(
    r1_tarski @ sk_D @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(t117_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k8_relat_1 @ A @ B ) @ B ) ) )).

thf('9',plain,(
    ! [X14: $i,X15: $i] :
      ( ( r1_tarski @ ( k8_relat_1 @ X14 @ X15 ) @ X15 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t117_relat_1])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k8_relat_1 @ X1 @ X0 ) @ X2 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k2_zfmisc_1 @ sk_C @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['8','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('14',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('15',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) )
    | ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('16',plain,(
    ! [X10: $i,X11: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('17',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['12','17'])).

thf('19',plain,(
    ! [X3: $i,X5: $i] :
      ( ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X5 ) )
      | ~ ( r1_tarski @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('20',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('21',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v4_relat_1 @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('22',plain,(
    ! [X0: $i] :
      ( v4_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ sk_C ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf(d18_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v4_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('23',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v4_relat_1 @ X8 @ X9 )
      | ( r1_tarski @ ( k1_relat_1 @ X8 ) @ X9 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[d18_relat_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) )
      | ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ sk_C ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('26',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('27',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) )
      | ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X10: $i,X11: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('29',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['24','29'])).

thf(t11_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A )
          & ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) )
       => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf('31',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X23 ) @ X24 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X23 ) @ X25 )
      | ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t11_relset_1])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) )
      | ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('34',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ X1 ) ) ),
    inference(demod,[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_D )
      | ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['5','34'])).

thf('36',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['15','16'])).

thf('37',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,(
    $false ),
    inference(demod,[status(thm)],['4','37'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.0tzigURLM4
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:25:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.53  % Solved by: fo/fo7.sh
% 0.20/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.53  % done 140 iterations in 0.077s
% 0.20/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.53  % SZS output start Refutation
% 0.20/0.53  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.53  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.20/0.53  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.53  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.20/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.53  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.53  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.53  thf(k6_relset_1_type, type, k6_relset_1: $i > $i > $i > $i > $i).
% 0.20/0.53  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.20/0.53  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.53  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.53  thf(t35_relset_1, conjecture,
% 0.20/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.53     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.20/0.53       ( m1_subset_1 @
% 0.20/0.53         ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.20/0.53         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ))).
% 0.20/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.53    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.53        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.20/0.53          ( m1_subset_1 @
% 0.20/0.53            ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.20/0.53            ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) )),
% 0.20/0.53    inference('cnf.neg', [status(esa)], [t35_relset_1])).
% 0.20/0.53  thf('0', plain,
% 0.20/0.53      (~ (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ sk_B @ sk_D) @ 
% 0.20/0.53          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('1', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(redefinition_k6_relset_1, axiom,
% 0.20/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.53     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.53       ( ( k6_relset_1 @ A @ B @ C @ D ) = ( k8_relat_1 @ C @ D ) ) ))).
% 0.20/0.53  thf('2', plain,
% 0.20/0.53      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.53         (((k6_relset_1 @ X21 @ X22 @ X19 @ X20) = (k8_relat_1 @ X19 @ X20))
% 0.20/0.53          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22))))),
% 0.20/0.53      inference('cnf', [status(esa)], [redefinition_k6_relset_1])).
% 0.20/0.53  thf('3', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) = (k8_relat_1 @ X0 @ sk_D))),
% 0.20/0.53      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.53  thf('4', plain,
% 0.20/0.53      (~ (m1_subset_1 @ (k8_relat_1 @ sk_B @ sk_D) @ 
% 0.20/0.53          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.20/0.53      inference('demod', [status(thm)], ['0', '3'])).
% 0.20/0.53  thf(t116_relat_1, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( v1_relat_1 @ B ) =>
% 0.20/0.53       ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ))).
% 0.20/0.53  thf('5', plain,
% 0.20/0.53      (![X12 : $i, X13 : $i]:
% 0.20/0.53         ((r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X12 @ X13)) @ X12)
% 0.20/0.53          | ~ (v1_relat_1 @ X13))),
% 0.20/0.53      inference('cnf', [status(esa)], [t116_relat_1])).
% 0.20/0.54  thf('6', plain,
% 0.20/0.54      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(t3_subset, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.54  thf('7', plain,
% 0.20/0.54      (![X3 : $i, X4 : $i]:
% 0.20/0.54         ((r1_tarski @ X3 @ X4) | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.54  thf('8', plain, ((r1_tarski @ sk_D @ (k2_zfmisc_1 @ sk_C @ sk_A))),
% 0.20/0.54      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.54  thf(t117_relat_1, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( v1_relat_1 @ B ) => ( r1_tarski @ ( k8_relat_1 @ A @ B ) @ B ) ))).
% 0.20/0.54  thf('9', plain,
% 0.20/0.54      (![X14 : $i, X15 : $i]:
% 0.20/0.54         ((r1_tarski @ (k8_relat_1 @ X14 @ X15) @ X15) | ~ (v1_relat_1 @ X15))),
% 0.20/0.54      inference('cnf', [status(esa)], [t117_relat_1])).
% 0.20/0.54  thf(t1_xboole_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.54       ( r1_tarski @ A @ C ) ))).
% 0.20/0.54  thf('10', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         (~ (r1_tarski @ X0 @ X1)
% 0.20/0.54          | ~ (r1_tarski @ X1 @ X2)
% 0.20/0.54          | (r1_tarski @ X0 @ X2))),
% 0.20/0.54      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.20/0.54  thf('11', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         (~ (v1_relat_1 @ X0)
% 0.20/0.54          | (r1_tarski @ (k8_relat_1 @ X1 @ X0) @ X2)
% 0.20/0.54          | ~ (r1_tarski @ X0 @ X2))),
% 0.20/0.54      inference('sup-', [status(thm)], ['9', '10'])).
% 0.20/0.54  thf('12', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         ((r1_tarski @ (k8_relat_1 @ X0 @ sk_D) @ (k2_zfmisc_1 @ sk_C @ sk_A))
% 0.20/0.54          | ~ (v1_relat_1 @ sk_D))),
% 0.20/0.54      inference('sup-', [status(thm)], ['8', '11'])).
% 0.20/0.54  thf('13', plain,
% 0.20/0.54      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(cc2_relat_1, axiom,
% 0.20/0.54    (![A:$i]:
% 0.20/0.54     ( ( v1_relat_1 @ A ) =>
% 0.20/0.54       ( ![B:$i]:
% 0.20/0.54         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.20/0.54  thf('14', plain,
% 0.20/0.54      (![X6 : $i, X7 : $i]:
% 0.20/0.54         (~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.20/0.54          | (v1_relat_1 @ X6)
% 0.20/0.54          | ~ (v1_relat_1 @ X7))),
% 0.20/0.54      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.20/0.54  thf('15', plain,
% 0.20/0.54      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)) | (v1_relat_1 @ sk_D))),
% 0.20/0.54      inference('sup-', [status(thm)], ['13', '14'])).
% 0.20/0.54  thf(fc6_relat_1, axiom,
% 0.20/0.54    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.20/0.54  thf('16', plain,
% 0.20/0.54      (![X10 : $i, X11 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X10 @ X11))),
% 0.20/0.54      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.20/0.54  thf('17', plain, ((v1_relat_1 @ sk_D)),
% 0.20/0.54      inference('demod', [status(thm)], ['15', '16'])).
% 0.20/0.54  thf('18', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (r1_tarski @ (k8_relat_1 @ X0 @ sk_D) @ (k2_zfmisc_1 @ sk_C @ sk_A))),
% 0.20/0.54      inference('demod', [status(thm)], ['12', '17'])).
% 0.20/0.54  thf('19', plain,
% 0.20/0.54      (![X3 : $i, X5 : $i]:
% 0.20/0.54         ((m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X5)) | ~ (r1_tarski @ X3 @ X5))),
% 0.20/0.54      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.54  thf('20', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.54          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.54  thf(cc2_relset_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.54       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.20/0.54  thf('21', plain,
% 0.20/0.54      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.54         ((v4_relat_1 @ X16 @ X17)
% 0.20/0.54          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.20/0.54      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.54  thf('22', plain,
% 0.20/0.54      (![X0 : $i]: (v4_relat_1 @ (k8_relat_1 @ X0 @ sk_D) @ sk_C)),
% 0.20/0.54      inference('sup-', [status(thm)], ['20', '21'])).
% 0.20/0.54  thf(d18_relat_1, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( v1_relat_1 @ B ) =>
% 0.20/0.54       ( ( v4_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.20/0.54  thf('23', plain,
% 0.20/0.54      (![X8 : $i, X9 : $i]:
% 0.20/0.54         (~ (v4_relat_1 @ X8 @ X9)
% 0.20/0.54          | (r1_tarski @ (k1_relat_1 @ X8) @ X9)
% 0.20/0.54          | ~ (v1_relat_1 @ X8))),
% 0.20/0.54      inference('cnf', [status(esa)], [d18_relat_1])).
% 0.20/0.54  thf('24', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D))
% 0.20/0.54          | (r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ sk_C))),
% 0.20/0.54      inference('sup-', [status(thm)], ['22', '23'])).
% 0.20/0.54  thf('25', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.54          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.54  thf('26', plain,
% 0.20/0.54      (![X6 : $i, X7 : $i]:
% 0.20/0.54         (~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.20/0.54          | (v1_relat_1 @ X6)
% 0.20/0.54          | ~ (v1_relat_1 @ X7))),
% 0.20/0.54      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.20/0.54  thf('27', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_C @ sk_A))
% 0.20/0.54          | (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['25', '26'])).
% 0.20/0.54  thf('28', plain,
% 0.20/0.54      (![X10 : $i, X11 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X10 @ X11))),
% 0.20/0.54      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.20/0.54  thf('29', plain, (![X0 : $i]: (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D))),
% 0.20/0.54      inference('demod', [status(thm)], ['27', '28'])).
% 0.20/0.54  thf('30', plain,
% 0.20/0.54      (![X0 : $i]: (r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ sk_C)),
% 0.20/0.54      inference('demod', [status(thm)], ['24', '29'])).
% 0.20/0.54  thf(t11_relset_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( v1_relat_1 @ C ) =>
% 0.20/0.54       ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A ) & 
% 0.20/0.54           ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) ) =>
% 0.20/0.54         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 0.20/0.54  thf('31', plain,
% 0.20/0.54      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.20/0.54         (~ (r1_tarski @ (k1_relat_1 @ X23) @ X24)
% 0.20/0.54          | ~ (r1_tarski @ (k2_relat_1 @ X23) @ X25)
% 0.20/0.54          | (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25)))
% 0.20/0.54          | ~ (v1_relat_1 @ X23))),
% 0.20/0.54      inference('cnf', [status(esa)], [t11_relset_1])).
% 0.20/0.54  thf('32', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i]:
% 0.20/0.54         (~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D))
% 0.20/0.54          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.54             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.20/0.54          | ~ (r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ X1))),
% 0.20/0.54      inference('sup-', [status(thm)], ['30', '31'])).
% 0.20/0.54  thf('33', plain, (![X0 : $i]: (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D))),
% 0.20/0.54      inference('demod', [status(thm)], ['27', '28'])).
% 0.20/0.54  thf('34', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i]:
% 0.20/0.54         ((m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.54           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.20/0.54          | ~ (r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ X1))),
% 0.20/0.54      inference('demod', [status(thm)], ['32', '33'])).
% 0.20/0.54  thf('35', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (~ (v1_relat_1 @ sk_D)
% 0.20/0.54          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.54             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0))))),
% 0.20/0.54      inference('sup-', [status(thm)], ['5', '34'])).
% 0.20/0.54  thf('36', plain, ((v1_relat_1 @ sk_D)),
% 0.20/0.54      inference('demod', [status(thm)], ['15', '16'])).
% 0.20/0.54  thf('37', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.20/0.54          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))),
% 0.20/0.54      inference('demod', [status(thm)], ['35', '36'])).
% 0.20/0.54  thf('38', plain, ($false), inference('demod', [status(thm)], ['4', '37'])).
% 0.20/0.54  
% 0.20/0.54  % SZS output end Refutation
% 0.20/0.54  
% 0.20/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
