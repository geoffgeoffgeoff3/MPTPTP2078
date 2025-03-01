%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Ia3IsW5pLY

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:36:58 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   59 (  66 expanded)
%              Number of leaves         :   25 (  30 expanded)
%              Depth                    :    9
%              Number of atoms          :  323 ( 387 expanded)
%              Number of equality atoms :   32 (  39 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k4_subset_1_type,type,(
    k4_subset_1: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(t28_subset_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k4_subset_1 @ A @ B @ ( k2_subset_1 @ A ) )
        = ( k2_subset_1 @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ( ( k4_subset_1 @ A @ B @ ( k2_subset_1 @ A ) )
          = ( k2_subset_1 @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t28_subset_1])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d2_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_xboole_0 @ A )
       => ( ( m1_subset_1 @ B @ A )
        <=> ( v1_xboole_0 @ B ) ) )
      & ( ~ ( v1_xboole_0 @ A )
       => ( ( m1_subset_1 @ B @ A )
        <=> ( r2_hidden @ B @ A ) ) ) ) )).

thf('1',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X17 @ X18 )
      | ( r2_hidden @ X17 @ X18 )
      | ( v1_xboole_0 @ X18 ) ) ),
    inference(cnf,[status(esa)],[d2_subset_1])).

thf('2',plain,
    ( ( v1_xboole_0 @ ( k1_zfmisc_1 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(fc1_subset_1,axiom,(
    ! [A: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('3',plain,(
    ! [X22: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[fc1_subset_1])).

thf('4',plain,(
    r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(clc,[status(thm)],['2','3'])).

thf(d1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_zfmisc_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( r1_tarski @ C @ A ) ) ) )).

thf('5',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ~ ( r2_hidden @ X13 @ X12 )
      | ( r1_tarski @ X13 @ X11 )
      | ( X12
       != ( k1_zfmisc_1 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[d1_zfmisc_1])).

thf('6',plain,(
    ! [X11: $i,X13: $i] :
      ( ( r1_tarski @ X13 @ X11 )
      | ~ ( r2_hidden @ X13 @ ( k1_zfmisc_1 @ X11 ) ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['4','6'])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('8',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k3_xboole_0 @ X4 @ X5 )
        = X4 )
      | ~ ( r1_tarski @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('9',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_A )
    = sk_B ),
    inference('sup-',[status(thm)],['7','8'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t22_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) )
      = A ) )).

thf('11',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ X2 @ ( k3_xboole_0 @ X2 @ X3 ) )
      = X2 ) ),
    inference(cnf,[status(esa)],[t22_xboole_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X0 @ ( k3_xboole_0 @ X1 @ X0 ) )
      = X0 ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf('13',plain,
    ( ( k2_xboole_0 @ sk_A @ sk_B )
    = sk_A ),
    inference('sup+',[status(thm)],['9','12'])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('14',plain,(
    ! [X6: $i,X7: $i] :
      ( ( k2_tarski @ X7 @ X6 )
      = ( k2_tarski @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('15',plain,(
    ! [X15: $i,X16: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X15 @ X16 ) )
      = ( k2_xboole_0 @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X15: $i,X16: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X15 @ X16 ) )
      = ( k2_xboole_0 @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['16','17'])).

thf('19',plain,
    ( ( k2_xboole_0 @ sk_B @ sk_A )
    = sk_A ),
    inference(demod,[status(thm)],['13','18'])).

thf('20',plain,(
    ( k4_subset_1 @ sk_A @ sk_B @ ( k2_subset_1 @ sk_A ) )
 != ( k2_subset_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('21',plain,(
    ! [X20: $i] :
      ( ( k2_subset_1 @ X20 )
      = X20 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('22',plain,(
    ! [X20: $i] :
      ( ( k2_subset_1 @ X20 )
      = X20 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('23',plain,(
    ( k4_subset_1 @ sk_A @ sk_B @ sk_A )
 != sk_A ),
    inference(demod,[status(thm)],['20','21','22'])).

thf(dt_k2_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ) )).

thf('24',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ X21 ) @ ( k1_zfmisc_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_subset_1])).

thf('25',plain,(
    ! [X20: $i] :
      ( ( k2_subset_1 @ X20 )
      = X20 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('26',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ X21 ) ) ),
    inference(demod,[status(thm)],['24','25'])).

thf('27',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k4_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( k4_subset_1 @ A @ B @ C )
        = ( k2_xboole_0 @ B @ C ) ) ) )).

thf('28',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X25 @ ( k1_zfmisc_1 @ X24 ) )
      | ( ( k4_subset_1 @ X24 @ X23 @ X25 )
        = ( k2_xboole_0 @ X23 @ X25 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_subset_1])).

thf('29',plain,(
    ! [X0: $i] :
      ( ( ( k4_subset_1 @ sk_A @ sk_B @ X0 )
        = ( k2_xboole_0 @ sk_B @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,
    ( ( k4_subset_1 @ sk_A @ sk_B @ sk_A )
    = ( k2_xboole_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['26','29'])).

thf('31',plain,(
    ( k2_xboole_0 @ sk_B @ sk_A )
 != sk_A ),
    inference(demod,[status(thm)],['23','30'])).

thf('32',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['19','31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Ia3IsW5pLY
% 0.13/0.36  % Computer   : n008.cluster.edu
% 0.13/0.36  % Model      : x86_64 x86_64
% 0.13/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.36  % Memory     : 8042.1875MB
% 0.13/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.36  % CPULimit   : 60
% 0.13/0.36  % DateTime   : Tue Dec  1 13:27:00 EST 2020
% 0.13/0.36  % CPUTime    : 
% 0.13/0.36  % Running portfolio for 600 s
% 0.13/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.36  % Number of cores: 8
% 0.13/0.37  % Python version: Python 3.6.8
% 0.13/0.37  % Running in FO mode
% 0.22/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.49  % Solved by: fo/fo7.sh
% 0.22/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.49  % done 51 iterations in 0.024s
% 0.22/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.49  % SZS output start Refutation
% 0.22/0.49  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.22/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.22/0.49  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.22/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.49  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.49  thf(k4_subset_1_type, type, k4_subset_1: $i > $i > $i > $i).
% 0.22/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.22/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.49  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.22/0.49  thf(t28_subset_1, conjecture,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.49       ( ( k4_subset_1 @ A @ B @ ( k2_subset_1 @ A ) ) = ( k2_subset_1 @ A ) ) ))).
% 0.22/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.49    (~( ![A:$i,B:$i]:
% 0.22/0.49        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.49          ( ( k4_subset_1 @ A @ B @ ( k2_subset_1 @ A ) ) = ( k2_subset_1 @ A ) ) ) )),
% 0.22/0.49    inference('cnf.neg', [status(esa)], [t28_subset_1])).
% 0.22/0.49  thf('0', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(d2_subset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( ( v1_xboole_0 @ A ) =>
% 0.22/0.49         ( ( m1_subset_1 @ B @ A ) <=> ( v1_xboole_0 @ B ) ) ) & 
% 0.22/0.49       ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.22/0.49         ( ( m1_subset_1 @ B @ A ) <=> ( r2_hidden @ B @ A ) ) ) ))).
% 0.22/0.49  thf('1', plain,
% 0.22/0.49      (![X17 : $i, X18 : $i]:
% 0.22/0.49         (~ (m1_subset_1 @ X17 @ X18)
% 0.22/0.49          | (r2_hidden @ X17 @ X18)
% 0.22/0.49          | (v1_xboole_0 @ X18))),
% 0.22/0.49      inference('cnf', [status(esa)], [d2_subset_1])).
% 0.22/0.49  thf('2', plain,
% 0.22/0.49      (((v1_xboole_0 @ (k1_zfmisc_1 @ sk_A))
% 0.22/0.49        | (r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.49      inference('sup-', [status(thm)], ['0', '1'])).
% 0.22/0.49  thf(fc1_subset_1, axiom,
% 0.22/0.49    (![A:$i]: ( ~( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.22/0.49  thf('3', plain, (![X22 : $i]: ~ (v1_xboole_0 @ (k1_zfmisc_1 @ X22))),
% 0.22/0.49      inference('cnf', [status(esa)], [fc1_subset_1])).
% 0.22/0.49  thf('4', plain, ((r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.49      inference('clc', [status(thm)], ['2', '3'])).
% 0.22/0.49  thf(d1_zfmisc_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( ( B ) = ( k1_zfmisc_1 @ A ) ) <=>
% 0.22/0.49       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( r1_tarski @ C @ A ) ) ) ))).
% 0.22/0.49  thf('5', plain,
% 0.22/0.49      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X13 @ X12)
% 0.22/0.49          | (r1_tarski @ X13 @ X11)
% 0.22/0.49          | ((X12) != (k1_zfmisc_1 @ X11)))),
% 0.22/0.49      inference('cnf', [status(esa)], [d1_zfmisc_1])).
% 0.22/0.49  thf('6', plain,
% 0.22/0.49      (![X11 : $i, X13 : $i]:
% 0.22/0.49         ((r1_tarski @ X13 @ X11) | ~ (r2_hidden @ X13 @ (k1_zfmisc_1 @ X11)))),
% 0.22/0.49      inference('simplify', [status(thm)], ['5'])).
% 0.22/0.49  thf('7', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.22/0.49      inference('sup-', [status(thm)], ['4', '6'])).
% 0.22/0.49  thf(t28_xboole_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.22/0.49  thf('8', plain,
% 0.22/0.49      (![X4 : $i, X5 : $i]:
% 0.22/0.49         (((k3_xboole_0 @ X4 @ X5) = (X4)) | ~ (r1_tarski @ X4 @ X5))),
% 0.22/0.49      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.22/0.49  thf('9', plain, (((k3_xboole_0 @ sk_B @ sk_A) = (sk_B))),
% 0.22/0.49      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.49  thf(commutativity_k3_xboole_0, axiom,
% 0.22/0.49    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.22/0.49  thf('10', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.22/0.49      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.22/0.49  thf(t22_xboole_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) = ( A ) ))).
% 0.22/0.49  thf('11', plain,
% 0.22/0.49      (![X2 : $i, X3 : $i]:
% 0.22/0.49         ((k2_xboole_0 @ X2 @ (k3_xboole_0 @ X2 @ X3)) = (X2))),
% 0.22/0.49      inference('cnf', [status(esa)], [t22_xboole_1])).
% 0.22/0.49  thf('12', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]:
% 0.22/0.49         ((k2_xboole_0 @ X0 @ (k3_xboole_0 @ X1 @ X0)) = (X0))),
% 0.22/0.49      inference('sup+', [status(thm)], ['10', '11'])).
% 0.22/0.49  thf('13', plain, (((k2_xboole_0 @ sk_A @ sk_B) = (sk_A))),
% 0.22/0.49      inference('sup+', [status(thm)], ['9', '12'])).
% 0.22/0.49  thf(commutativity_k2_tarski, axiom,
% 0.22/0.49    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.22/0.49  thf('14', plain,
% 0.22/0.49      (![X6 : $i, X7 : $i]: ((k2_tarski @ X7 @ X6) = (k2_tarski @ X6 @ X7))),
% 0.22/0.49      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.22/0.49  thf(l51_zfmisc_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.22/0.49  thf('15', plain,
% 0.22/0.49      (![X15 : $i, X16 : $i]:
% 0.22/0.49         ((k3_tarski @ (k2_tarski @ X15 @ X16)) = (k2_xboole_0 @ X15 @ X16))),
% 0.22/0.49      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.22/0.49  thf('16', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]:
% 0.22/0.49         ((k3_tarski @ (k2_tarski @ X1 @ X0)) = (k2_xboole_0 @ X0 @ X1))),
% 0.22/0.49      inference('sup+', [status(thm)], ['14', '15'])).
% 0.22/0.49  thf('17', plain,
% 0.22/0.49      (![X15 : $i, X16 : $i]:
% 0.22/0.49         ((k3_tarski @ (k2_tarski @ X15 @ X16)) = (k2_xboole_0 @ X15 @ X16))),
% 0.22/0.49      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.22/0.49  thf('18', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.22/0.49      inference('sup+', [status(thm)], ['16', '17'])).
% 0.22/0.49  thf('19', plain, (((k2_xboole_0 @ sk_B @ sk_A) = (sk_A))),
% 0.22/0.49      inference('demod', [status(thm)], ['13', '18'])).
% 0.22/0.49  thf('20', plain,
% 0.22/0.49      (((k4_subset_1 @ sk_A @ sk_B @ (k2_subset_1 @ sk_A))
% 0.22/0.49         != (k2_subset_1 @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.22/0.49  thf('21', plain, (![X20 : $i]: ((k2_subset_1 @ X20) = (X20))),
% 0.22/0.49      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.22/0.49  thf('22', plain, (![X20 : $i]: ((k2_subset_1 @ X20) = (X20))),
% 0.22/0.49      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.22/0.49  thf('23', plain, (((k4_subset_1 @ sk_A @ sk_B @ sk_A) != (sk_A))),
% 0.22/0.49      inference('demod', [status(thm)], ['20', '21', '22'])).
% 0.22/0.49  thf(dt_k2_subset_1, axiom,
% 0.22/0.49    (![A:$i]: ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ))).
% 0.22/0.49  thf('24', plain,
% 0.22/0.49      (![X21 : $i]: (m1_subset_1 @ (k2_subset_1 @ X21) @ (k1_zfmisc_1 @ X21))),
% 0.22/0.49      inference('cnf', [status(esa)], [dt_k2_subset_1])).
% 0.22/0.49  thf('25', plain, (![X20 : $i]: ((k2_subset_1 @ X20) = (X20))),
% 0.22/0.49      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.22/0.49  thf('26', plain, (![X21 : $i]: (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ X21))),
% 0.22/0.49      inference('demod', [status(thm)], ['24', '25'])).
% 0.22/0.49  thf('27', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(redefinition_k4_subset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) & 
% 0.22/0.49         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.22/0.49       ( ( k4_subset_1 @ A @ B @ C ) = ( k2_xboole_0 @ B @ C ) ) ))).
% 0.22/0.49  thf('28', plain,
% 0.22/0.49      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.22/0.49         (~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ X24))
% 0.22/0.49          | ~ (m1_subset_1 @ X25 @ (k1_zfmisc_1 @ X24))
% 0.22/0.49          | ((k4_subset_1 @ X24 @ X23 @ X25) = (k2_xboole_0 @ X23 @ X25)))),
% 0.22/0.49      inference('cnf', [status(esa)], [redefinition_k4_subset_1])).
% 0.22/0.49  thf('29', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (((k4_subset_1 @ sk_A @ sk_B @ X0) = (k2_xboole_0 @ sk_B @ X0))
% 0.22/0.49          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.49      inference('sup-', [status(thm)], ['27', '28'])).
% 0.22/0.49  thf('30', plain,
% 0.22/0.49      (((k4_subset_1 @ sk_A @ sk_B @ sk_A) = (k2_xboole_0 @ sk_B @ sk_A))),
% 0.22/0.49      inference('sup-', [status(thm)], ['26', '29'])).
% 0.22/0.49  thf('31', plain, (((k2_xboole_0 @ sk_B @ sk_A) != (sk_A))),
% 0.22/0.49      inference('demod', [status(thm)], ['23', '30'])).
% 0.22/0.49  thf('32', plain, ($false),
% 0.22/0.49      inference('simplify_reflect-', [status(thm)], ['19', '31'])).
% 0.22/0.49  
% 0.22/0.49  % SZS output end Refutation
% 0.22/0.49  
% 0.22/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
