%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ZXtISvUv4N

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:33:21 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   21 (  23 expanded)
%              Number of leaves         :   11 (  12 expanded)
%              Depth                    :    5
%              Number of atoms          :   86 ( 106 expanded)
%              Number of equality atoms :    5 (   7 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(t51_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) )
        = ( k1_tarski @ B ) )
     => ( r2_hidden @ B @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) )
          = ( k1_tarski @ B ) )
       => ( r2_hidden @ B @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t51_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( k3_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) )
    = ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X0 @ X1 ) @ X0 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('3',plain,(
    r1_tarski @ ( k1_tarski @ sk_B ) @ sk_A ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('4',plain,(
    ! [X4: $i] :
      ( ( k2_tarski @ X4 @ X4 )
      = ( k1_tarski @ X4 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('5',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r2_hidden @ X10 @ X11 )
      | ~ ( r1_tarski @ ( k2_tarski @ X10 @ X12 ) @ X11 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    r2_hidden @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['3','6'])).

thf('8',plain,(
    $false ),
    inference(demod,[status(thm)],['0','7'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ZXtISvUv4N
% 0.14/0.35  % Computer   : n025.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 20:22:21 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.36  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 0.22/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.49  % Solved by: fo/fo7.sh
% 0.22/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.49  % done 19 iterations in 0.021s
% 0.22/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.49  % SZS output start Refutation
% 0.22/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.22/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.22/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.22/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.49  thf(t51_zfmisc_1, conjecture,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_tarski @ B ) ) =>
% 0.22/0.49       ( r2_hidden @ B @ A ) ))).
% 0.22/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.49    (~( ![A:$i,B:$i]:
% 0.22/0.49        ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_tarski @ B ) ) =>
% 0.22/0.49          ( r2_hidden @ B @ A ) ) )),
% 0.22/0.49    inference('cnf.neg', [status(esa)], [t51_zfmisc_1])).
% 0.22/0.49  thf('0', plain, (~ (r2_hidden @ sk_B @ sk_A)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('1', plain,
% 0.22/0.49      (((k3_xboole_0 @ sk_A @ (k1_tarski @ sk_B)) = (k1_tarski @ sk_B))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(t17_xboole_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.22/0.49  thf('2', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X0 @ X1) @ X0)),
% 0.22/0.49      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.22/0.49  thf('3', plain, ((r1_tarski @ (k1_tarski @ sk_B) @ sk_A)),
% 0.22/0.49      inference('sup+', [status(thm)], ['1', '2'])).
% 0.22/0.49  thf(t69_enumset1, axiom,
% 0.22/0.49    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.22/0.49  thf('4', plain, (![X4 : $i]: ((k2_tarski @ X4 @ X4) = (k1_tarski @ X4))),
% 0.22/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.22/0.49  thf(t38_zfmisc_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.22/0.49       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.22/0.49  thf('5', plain,
% 0.22/0.49      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.22/0.49         ((r2_hidden @ X10 @ X11)
% 0.22/0.49          | ~ (r1_tarski @ (k2_tarski @ X10 @ X12) @ X11))),
% 0.22/0.49      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.22/0.49  thf('6', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]:
% 0.22/0.49         (~ (r1_tarski @ (k1_tarski @ X0) @ X1) | (r2_hidden @ X0 @ X1))),
% 0.22/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.22/0.49  thf('7', plain, ((r2_hidden @ sk_B @ sk_A)),
% 0.22/0.49      inference('sup-', [status(thm)], ['3', '6'])).
% 0.22/0.49  thf('8', plain, ($false), inference('demod', [status(thm)], ['0', '7'])).
% 0.22/0.49  
% 0.22/0.49  % SZS output end Refutation
% 0.22/0.49  
% 0.22/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
