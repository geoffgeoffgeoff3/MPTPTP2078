%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.tl3FHhD4ts

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:32:54 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   33 (  49 expanded)
%              Number of leaves         :   15 (  21 expanded)
%              Depth                    :    8
%              Number of atoms          :  152 ( 250 expanded)
%              Number of equality atoms :   26 (  42 expanded)
%              Maximal formula depth    :    9 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(t49_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B )
     != k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B )
       != k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t49_zfmisc_1])).

thf('0',plain,
    ( ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t21_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = A ) )).

thf('1',plain,(
    ! [X3: $i,X4: $i] :
      ( ( k3_xboole_0 @ X3 @ ( k2_xboole_0 @ X3 @ X4 ) )
      = X3 ) ),
    inference(cnf,[status(esa)],[t21_xboole_1])).

thf('2',plain,
    ( ( k3_xboole_0 @ ( k1_tarski @ sk_A ) @ k1_xboole_0 )
    = ( k1_tarski @ sk_A ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('3',plain,(
    ! [X5: $i] :
      ( ( k3_xboole_0 @ X5 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('4',plain,
    ( k1_xboole_0
    = ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['2','3'])).

thf(t20_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
        = ( k1_tarski @ A ) )
    <=> ( A != B ) ) )).

thf('5',plain,(
    ! [X33: $i,X34: $i] :
      ( ( X34 != X33 )
      | ( ( k4_xboole_0 @ ( k1_tarski @ X34 ) @ ( k1_tarski @ X33 ) )
       != ( k1_tarski @ X34 ) ) ) ),
    inference(cnf,[status(esa)],[t20_zfmisc_1])).

thf('6',plain,(
    ! [X33: $i] :
      ( ( k4_xboole_0 @ ( k1_tarski @ X33 ) @ ( k1_tarski @ X33 ) )
     != ( k1_tarski @ X33 ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ( k4_xboole_0 @ ( k1_tarski @ sk_A ) @ k1_xboole_0 )
 != ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['4','6'])).

thf('8',plain,
    ( k1_xboole_0
    = ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['2','3'])).

thf('9',plain,
    ( k1_xboole_0
    = ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['2','3'])).

thf('10',plain,(
    ( k4_xboole_0 @ k1_xboole_0 @ k1_xboole_0 )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['7','8','9'])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('11',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('12',plain,(
    ! [X1: $i,X2: $i] :
      ( ( k4_xboole_0 @ X1 @ X2 )
      = ( k5_xboole_0 @ X1 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['11','12'])).

thf(t92_xboole_1,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ A )
      = k1_xboole_0 ) )).

thf('14',plain,(
    ! [X6: $i] :
      ( ( k5_xboole_0 @ X6 @ X6 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('15',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['10','13','14'])).

thf('16',plain,(
    $false ),
    inference(simplify,[status(thm)],['15'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.tl3FHhD4ts
% 0.13/0.34  % Computer   : n021.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:26:34 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.47  % Solved by: fo/fo7.sh
% 0.21/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.47  % done 26 iterations in 0.020s
% 0.21/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.47  % SZS output start Refutation
% 0.21/0.47  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.47  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(t49_zfmisc_1, conjecture,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) != ( k1_xboole_0 ) ))).
% 0.21/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.47    (~( ![A:$i,B:$i]:
% 0.21/0.47        ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) != ( k1_xboole_0 ) ) )),
% 0.21/0.47    inference('cnf.neg', [status(esa)], [t49_zfmisc_1])).
% 0.21/0.47  thf('0', plain,
% 0.21/0.47      (((k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B) = (k1_xboole_0))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(t21_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( A ) ))).
% 0.21/0.47  thf('1', plain,
% 0.21/0.47      (![X3 : $i, X4 : $i]:
% 0.21/0.47         ((k3_xboole_0 @ X3 @ (k2_xboole_0 @ X3 @ X4)) = (X3))),
% 0.21/0.47      inference('cnf', [status(esa)], [t21_xboole_1])).
% 0.21/0.47  thf('2', plain,
% 0.21/0.47      (((k3_xboole_0 @ (k1_tarski @ sk_A) @ k1_xboole_0) = (k1_tarski @ sk_A))),
% 0.21/0.47      inference('sup+', [status(thm)], ['0', '1'])).
% 0.21/0.47  thf(t2_boole, axiom,
% 0.21/0.47    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.21/0.47  thf('3', plain,
% 0.21/0.47      (![X5 : $i]: ((k3_xboole_0 @ X5 @ k1_xboole_0) = (k1_xboole_0))),
% 0.21/0.47      inference('cnf', [status(esa)], [t2_boole])).
% 0.21/0.47  thf('4', plain, (((k1_xboole_0) = (k1_tarski @ sk_A))),
% 0.21/0.47      inference('demod', [status(thm)], ['2', '3'])).
% 0.21/0.47  thf(t20_zfmisc_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =
% 0.21/0.47         ( k1_tarski @ A ) ) <=>
% 0.21/0.47       ( ( A ) != ( B ) ) ))).
% 0.21/0.47  thf('5', plain,
% 0.21/0.47      (![X33 : $i, X34 : $i]:
% 0.21/0.47         (((X34) != (X33))
% 0.21/0.47          | ((k4_xboole_0 @ (k1_tarski @ X34) @ (k1_tarski @ X33))
% 0.21/0.47              != (k1_tarski @ X34)))),
% 0.21/0.47      inference('cnf', [status(esa)], [t20_zfmisc_1])).
% 0.21/0.47  thf('6', plain,
% 0.21/0.47      (![X33 : $i]:
% 0.21/0.47         ((k4_xboole_0 @ (k1_tarski @ X33) @ (k1_tarski @ X33))
% 0.21/0.47           != (k1_tarski @ X33))),
% 0.21/0.47      inference('simplify', [status(thm)], ['5'])).
% 0.21/0.47  thf('7', plain,
% 0.21/0.47      (((k4_xboole_0 @ (k1_tarski @ sk_A) @ k1_xboole_0) != (k1_tarski @ sk_A))),
% 0.21/0.47      inference('sup-', [status(thm)], ['4', '6'])).
% 0.21/0.47  thf('8', plain, (((k1_xboole_0) = (k1_tarski @ sk_A))),
% 0.21/0.47      inference('demod', [status(thm)], ['2', '3'])).
% 0.21/0.47  thf('9', plain, (((k1_xboole_0) = (k1_tarski @ sk_A))),
% 0.21/0.47      inference('demod', [status(thm)], ['2', '3'])).
% 0.21/0.47  thf('10', plain,
% 0.21/0.47      (((k4_xboole_0 @ k1_xboole_0 @ k1_xboole_0) != (k1_xboole_0))),
% 0.21/0.47      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.21/0.47  thf(idempotence_k3_xboole_0, axiom,
% 0.21/0.47    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.21/0.47  thf('11', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.21/0.47      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.21/0.47  thf(t100_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.21/0.47  thf('12', plain,
% 0.21/0.47      (![X1 : $i, X2 : $i]:
% 0.21/0.47         ((k4_xboole_0 @ X1 @ X2)
% 0.21/0.47           = (k5_xboole_0 @ X1 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.21/0.47      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.21/0.47  thf('13', plain,
% 0.21/0.47      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.21/0.47      inference('sup+', [status(thm)], ['11', '12'])).
% 0.21/0.47  thf(t92_xboole_1, axiom,
% 0.21/0.47    (![A:$i]: ( ( k5_xboole_0 @ A @ A ) = ( k1_xboole_0 ) ))).
% 0.21/0.47  thf('14', plain, (![X6 : $i]: ((k5_xboole_0 @ X6 @ X6) = (k1_xboole_0))),
% 0.21/0.47      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.21/0.47  thf('15', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.21/0.47      inference('demod', [status(thm)], ['10', '13', '14'])).
% 0.21/0.47  thf('16', plain, ($false), inference('simplify', [status(thm)], ['15'])).
% 0.21/0.47  
% 0.21/0.47  % SZS output end Refutation
% 0.21/0.47  
% 0.21/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
