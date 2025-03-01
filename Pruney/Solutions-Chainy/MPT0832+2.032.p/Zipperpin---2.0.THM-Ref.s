%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.wDnIRZkNzW

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:32 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   62 (  86 expanded)
%              Number of leaves         :   26 (  36 expanded)
%              Depth                    :   13
%              Number of atoms          :  423 ( 687 expanded)
%              Number of equality atoms :    6 (   6 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k6_relset_1_type,type,(
    k6_relset_1: $i > $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

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
    ! [X22: $i,X23: $i,X24: $i,X25: $i] :
      ( ( ( k6_relset_1 @ X24 @ X25 @ X22 @ X23 )
        = ( k8_relat_1 @ X22 @ X23 ) )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
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
    ! [X8: $i,X9: $i] :
      ( ( v1_relat_1 @ ( k8_relat_1 @ X8 @ X9 ) )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[dt_k8_relat_1])).

thf(t116_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ) )).

thf('6',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ X12 @ X13 ) ) @ X12 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t116_relat_1])).

thf('7',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k1_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('8',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( m1_subset_1 @ ( k1_relset_1 @ X16 @ X17 @ X18 ) @ ( k1_zfmisc_1 @ X16 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_relset_1])).

thf('9',plain,(
    m1_subset_1 @ ( k1_relset_1 @ sk_C @ sk_A @ sk_D ) @ ( k1_zfmisc_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('11',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ( ( k1_relset_1 @ X20 @ X21 @ X19 )
        = ( k1_relat_1 @ X19 ) )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('12',plain,
    ( ( k1_relset_1 @ sk_C @ sk_A @ sk_D )
    = ( k1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    m1_subset_1 @ ( k1_relat_1 @ sk_D ) @ ( k1_zfmisc_1 @ sk_C ) ),
    inference(demod,[status(thm)],['9','12'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('14',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('15',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_D ) @ sk_C ),
    inference('sup-',[status(thm)],['13','14'])).

thf(l29_wellord1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ ( k1_relat_1 @ B ) ) ) )).

thf('16',plain,(
    ! [X14: $i,X15: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X14 @ X15 ) ) @ ( k1_relat_1 @ X15 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[l29_wellord1])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X1 @ X0 ) ) @ X2 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ sk_C )
      | ~ ( v1_relat_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['15','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('21',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('22',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_C @ sk_A ) )
    | ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('23',plain,(
    ! [X10: $i,X11: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('24',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_relat_1 @ ( k8_relat_1 @ X0 @ sk_D ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['19','24'])).

thf(t11_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A )
          & ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) )
       => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf('26',plain,(
    ! [X26: $i,X27: $i,X28: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X26 ) @ X27 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X26 ) @ X28 )
      | ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X28 ) ) )
      | ~ ( v1_relat_1 @ X26 ) ) ),
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
    inference(demod,[status(thm)],['22','23'])).

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
    inference(demod,[status(thm)],['22','23'])).

thf('33',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k8_relat_1 @ X0 @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ X0 ) ) ) ),
    inference(demod,[status(thm)],['31','32'])).

thf('34',plain,(
    $false ),
    inference(demod,[status(thm)],['4','33'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.wDnIRZkNzW
% 0.14/0.36  % Computer   : n023.cluster.edu
% 0.14/0.36  % Model      : x86_64 x86_64
% 0.14/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.36  % Memory     : 8042.1875MB
% 0.14/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.36  % CPULimit   : 60
% 0.14/0.36  % DateTime   : Tue Dec  1 16:02:36 EST 2020
% 0.14/0.36  % CPUTime    : 
% 0.14/0.36  % Running portfolio for 600 s
% 0.14/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.36  % Number of cores: 8
% 0.14/0.36  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 0.22/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.48  % Solved by: fo/fo7.sh
% 0.22/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.48  % done 122 iterations in 0.048s
% 0.22/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.48  % SZS output start Refutation
% 0.22/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.48  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.48  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.48  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.48  thf(k6_relset_1_type, type, k6_relset_1: $i > $i > $i > $i > $i).
% 0.22/0.48  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.48  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.48  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.22/0.48  thf(sk_D_type, type, sk_D: $i).
% 0.22/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.48  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.22/0.48  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.48  thf(t35_relset_1, conjecture,
% 0.22/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.22/0.48       ( m1_subset_1 @
% 0.22/0.48         ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.22/0.48         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ))).
% 0.22/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.48    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.22/0.48          ( m1_subset_1 @
% 0.22/0.48            ( k6_relset_1 @ C @ A @ B @ D ) @ 
% 0.22/0.48            ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) )),
% 0.22/0.48    inference('cnf.neg', [status(esa)], [t35_relset_1])).
% 0.22/0.48  thf('0', plain,
% 0.22/0.48      (~ (m1_subset_1 @ (k6_relset_1 @ sk_C @ sk_A @ sk_B @ sk_D) @ 
% 0.22/0.48          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('1', plain,
% 0.22/0.48      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(redefinition_k6_relset_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.48       ( ( k6_relset_1 @ A @ B @ C @ D ) = ( k8_relat_1 @ C @ D ) ) ))).
% 0.22/0.48  thf('2', plain,
% 0.22/0.48      (![X22 : $i, X23 : $i, X24 : $i, X25 : $i]:
% 0.22/0.48         (((k6_relset_1 @ X24 @ X25 @ X22 @ X23) = (k8_relat_1 @ X22 @ X23))
% 0.22/0.48          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.22/0.48      inference('cnf', [status(esa)], [redefinition_k6_relset_1])).
% 0.22/0.48  thf('3', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((k6_relset_1 @ sk_C @ sk_A @ X0 @ sk_D) = (k8_relat_1 @ X0 @ sk_D))),
% 0.22/0.48      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.48  thf('4', plain,
% 0.22/0.48      (~ (m1_subset_1 @ (k8_relat_1 @ sk_B @ sk_D) @ 
% 0.22/0.48          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.22/0.48      inference('demod', [status(thm)], ['0', '3'])).
% 0.22/0.48  thf(dt_k8_relat_1, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ B ) => ( v1_relat_1 @ ( k8_relat_1 @ A @ B ) ) ))).
% 0.22/0.48  thf('5', plain,
% 0.22/0.48      (![X8 : $i, X9 : $i]:
% 0.22/0.48         ((v1_relat_1 @ (k8_relat_1 @ X8 @ X9)) | ~ (v1_relat_1 @ X9))),
% 0.22/0.48      inference('cnf', [status(esa)], [dt_k8_relat_1])).
% 0.22/0.48  thf(t116_relat_1, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ B ) =>
% 0.22/0.48       ( r1_tarski @ ( k2_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ A ) ))).
% 0.22/0.48  thf('6', plain,
% 0.22/0.48      (![X12 : $i, X13 : $i]:
% 0.22/0.48         ((r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X12 @ X13)) @ X12)
% 0.22/0.48          | ~ (v1_relat_1 @ X13))),
% 0.22/0.48      inference('cnf', [status(esa)], [t116_relat_1])).
% 0.22/0.48  thf('7', plain,
% 0.22/0.48      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(dt_k1_relset_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.48       ( m1_subset_1 @ ( k1_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.22/0.48  thf('8', plain,
% 0.22/0.48      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.22/0.48         ((m1_subset_1 @ (k1_relset_1 @ X16 @ X17 @ X18) @ (k1_zfmisc_1 @ X16))
% 0.22/0.48          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17))))),
% 0.22/0.48      inference('cnf', [status(esa)], [dt_k1_relset_1])).
% 0.22/0.48  thf('9', plain,
% 0.22/0.48      ((m1_subset_1 @ (k1_relset_1 @ sk_C @ sk_A @ sk_D) @ (k1_zfmisc_1 @ sk_C))),
% 0.22/0.48      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.48  thf('10', plain,
% 0.22/0.48      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(redefinition_k1_relset_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.48       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.22/0.48  thf('11', plain,
% 0.22/0.48      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.22/0.48         (((k1_relset_1 @ X20 @ X21 @ X19) = (k1_relat_1 @ X19))
% 0.22/0.48          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21))))),
% 0.22/0.48      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.22/0.48  thf('12', plain,
% 0.22/0.48      (((k1_relset_1 @ sk_C @ sk_A @ sk_D) = (k1_relat_1 @ sk_D))),
% 0.22/0.48      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.48  thf('13', plain,
% 0.22/0.48      ((m1_subset_1 @ (k1_relat_1 @ sk_D) @ (k1_zfmisc_1 @ sk_C))),
% 0.22/0.48      inference('demod', [status(thm)], ['9', '12'])).
% 0.22/0.48  thf(t3_subset, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.22/0.48  thf('14', plain,
% 0.22/0.48      (![X3 : $i, X4 : $i]:
% 0.22/0.48         ((r1_tarski @ X3 @ X4) | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t3_subset])).
% 0.22/0.48  thf('15', plain, ((r1_tarski @ (k1_relat_1 @ sk_D) @ sk_C)),
% 0.22/0.48      inference('sup-', [status(thm)], ['13', '14'])).
% 0.22/0.48  thf(l29_wellord1, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ B ) =>
% 0.22/0.48       ( r1_tarski @
% 0.22/0.48         ( k1_relat_1 @ ( k8_relat_1 @ A @ B ) ) @ ( k1_relat_1 @ B ) ) ))).
% 0.22/0.48  thf('16', plain,
% 0.22/0.48      (![X14 : $i, X15 : $i]:
% 0.22/0.48         ((r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X14 @ X15)) @ 
% 0.22/0.48           (k1_relat_1 @ X15))
% 0.22/0.48          | ~ (v1_relat_1 @ X15))),
% 0.22/0.48      inference('cnf', [status(esa)], [l29_wellord1])).
% 0.22/0.48  thf(t1_xboole_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.22/0.48       ( r1_tarski @ A @ C ) ))).
% 0.22/0.48  thf('17', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.48         (~ (r1_tarski @ X0 @ X1)
% 0.22/0.48          | ~ (r1_tarski @ X1 @ X2)
% 0.22/0.48          | (r1_tarski @ X0 @ X2))),
% 0.22/0.48      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.22/0.48  thf('18', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ X0)
% 0.22/0.48          | (r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X1 @ X0)) @ X2)
% 0.22/0.48          | ~ (r1_tarski @ (k1_relat_1 @ X0) @ X2))),
% 0.22/0.48      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.48  thf('19', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ sk_C)
% 0.22/0.48          | ~ (v1_relat_1 @ sk_D))),
% 0.22/0.48      inference('sup-', [status(thm)], ['15', '18'])).
% 0.22/0.48  thf('20', plain,
% 0.22/0.48      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(cc2_relat_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ A ) =>
% 0.22/0.48       ( ![B:$i]:
% 0.22/0.48         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.22/0.48  thf('21', plain,
% 0.22/0.48      (![X6 : $i, X7 : $i]:
% 0.22/0.48         (~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.22/0.48          | (v1_relat_1 @ X6)
% 0.22/0.48          | ~ (v1_relat_1 @ X7))),
% 0.22/0.48      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.22/0.48  thf('22', plain,
% 0.22/0.48      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_C @ sk_A)) | (v1_relat_1 @ sk_D))),
% 0.22/0.48      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.48  thf(fc6_relat_1, axiom,
% 0.22/0.48    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.22/0.48  thf('23', plain,
% 0.22/0.48      (![X10 : $i, X11 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X10 @ X11))),
% 0.22/0.48      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.22/0.48  thf('24', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.48      inference('demod', [status(thm)], ['22', '23'])).
% 0.22/0.48  thf('25', plain,
% 0.22/0.48      (![X0 : $i]: (r1_tarski @ (k1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ sk_C)),
% 0.22/0.48      inference('demod', [status(thm)], ['19', '24'])).
% 0.22/0.48  thf(t11_relset_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ C ) =>
% 0.22/0.48       ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A ) & 
% 0.22/0.48           ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) ) =>
% 0.22/0.48         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 0.22/0.48  thf('26', plain,
% 0.22/0.48      (![X26 : $i, X27 : $i, X28 : $i]:
% 0.22/0.48         (~ (r1_tarski @ (k1_relat_1 @ X26) @ X27)
% 0.22/0.48          | ~ (r1_tarski @ (k2_relat_1 @ X26) @ X28)
% 0.22/0.48          | (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X28)))
% 0.22/0.48          | ~ (v1_relat_1 @ X26))),
% 0.22/0.48      inference('cnf', [status(esa)], [t11_relset_1])).
% 0.22/0.48  thf('27', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D))
% 0.22/0.48          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.22/0.48             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X1)))
% 0.22/0.48          | ~ (r1_tarski @ (k2_relat_1 @ (k8_relat_1 @ X0 @ sk_D)) @ X1))),
% 0.22/0.48      inference('sup-', [status(thm)], ['25', '26'])).
% 0.22/0.48  thf('28', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ sk_D)
% 0.22/0.48          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.22/0.48             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))
% 0.22/0.48          | ~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['6', '27'])).
% 0.22/0.48  thf('29', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.48      inference('demod', [status(thm)], ['22', '23'])).
% 0.22/0.48  thf('30', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.22/0.48           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))
% 0.22/0.48          | ~ (v1_relat_1 @ (k8_relat_1 @ X0 @ sk_D)))),
% 0.22/0.48      inference('demod', [status(thm)], ['28', '29'])).
% 0.22/0.48  thf('31', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ sk_D)
% 0.22/0.48          | (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.22/0.48             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0))))),
% 0.22/0.48      inference('sup-', [status(thm)], ['5', '30'])).
% 0.22/0.48  thf('32', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.48      inference('demod', [status(thm)], ['22', '23'])).
% 0.22/0.48  thf('33', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (m1_subset_1 @ (k8_relat_1 @ X0 @ sk_D) @ 
% 0.22/0.48          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ X0)))),
% 0.22/0.48      inference('demod', [status(thm)], ['31', '32'])).
% 0.22/0.48  thf('34', plain, ($false), inference('demod', [status(thm)], ['4', '33'])).
% 0.22/0.48  
% 0.22/0.48  % SZS output end Refutation
% 0.22/0.48  
% 0.22/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
