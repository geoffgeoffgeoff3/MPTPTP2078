%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.DITTr5IccL

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:34:47 EST 2020

% Result     : Theorem 1.22s
% Output     : Refutation 1.22s
% Verified   : 
% Statistics : Number of formulae       :   34 (  39 expanded)
%              Number of leaves         :   16 (  19 expanded)
%              Depth                    :    7
%              Number of atoms          :  226 ( 260 expanded)
%              Number of equality atoms :    9 (  10 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t86_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k2_xboole_0 @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ A @ B ) ) @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ B @ A ) ) ) @ ( k1_zfmisc_1 @ ( k5_xboole_0 @ A @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( r1_tarski @ ( k2_xboole_0 @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ A @ B ) ) @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ B @ A ) ) ) @ ( k1_zfmisc_1 @ ( k5_xboole_0 @ A @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t86_zfmisc_1])).

thf('0',plain,(
    ~ ( r1_tarski @ ( k2_xboole_0 @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ sk_A @ sk_B ) ) @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ sk_B @ sk_A ) ) ) @ ( k1_zfmisc_1 @ ( k5_xboole_0 @ sk_A @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d6_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k5_xboole_0 @ A @ B )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ B @ A ) ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ X1 )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d6_xboole_0])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('2',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k2_tarski @ X10 @ X9 )
      = ( k2_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('3',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X11 @ X12 ) )
      = ( k2_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X11 @ X12 ) )
      = ( k2_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('7',plain,(
    ! [X4: $i,X5: $i] :
      ( r1_tarski @ X4 @ ( k2_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf(t79_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( r1_tarski @ ( k1_zfmisc_1 @ A ) @ ( k1_zfmisc_1 @ B ) ) ) )).

thf('8',plain,(
    ! [X13: $i,X14: $i] :
      ( ( r1_tarski @ ( k1_zfmisc_1 @ X13 ) @ ( k1_zfmisc_1 @ X14 ) )
      | ~ ( r1_tarski @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t79_zfmisc_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k1_zfmisc_1 @ X1 ) @ ( k1_zfmisc_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k1_zfmisc_1 @ X0 ) @ ( k1_zfmisc_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['6','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k1_zfmisc_1 @ X1 ) @ ( k1_zfmisc_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t8_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ C @ B ) )
     => ( r1_tarski @ ( k2_xboole_0 @ A @ C ) @ B ) ) )).

thf('12',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ~ ( r1_tarski @ X6 @ X7 )
      | ~ ( r1_tarski @ X8 @ X7 )
      | ( r1_tarski @ ( k2_xboole_0 @ X6 @ X8 ) @ X7 ) ) ),
    inference(cnf,[status(esa)],[t8_xboole_1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ ( k1_zfmisc_1 @ X1 ) @ X2 ) @ ( k1_zfmisc_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) )
      | ~ ( r1_tarski @ X2 @ ( k1_zfmisc_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k2_xboole_0 @ ( k1_zfmisc_1 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) ) @ ( k1_zfmisc_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['10','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k2_xboole_0 @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ X1 @ X0 ) ) @ ( k1_zfmisc_1 @ ( k4_xboole_0 @ X0 @ X1 ) ) ) @ ( k1_zfmisc_1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['1','14'])).

thf('16',plain,(
    $false ),
    inference(demod,[status(thm)],['0','15'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.DITTr5IccL
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 12:25:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.36  % Number of cores: 8
% 0.14/0.36  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 1.22/1.39  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 1.22/1.39  % Solved by: fo/fo7.sh
% 1.22/1.39  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.22/1.39  % done 1417 iterations in 0.922s
% 1.22/1.39  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 1.22/1.39  % SZS output start Refutation
% 1.22/1.39  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 1.22/1.39  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.22/1.39  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 1.22/1.39  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 1.22/1.39  thf(sk_B_type, type, sk_B: $i).
% 1.22/1.39  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 1.22/1.39  thf(sk_A_type, type, sk_A: $i).
% 1.22/1.39  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 1.22/1.39  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 1.22/1.39  thf(t86_zfmisc_1, conjecture,
% 1.22/1.39    (![A:$i,B:$i]:
% 1.22/1.39     ( r1_tarski @
% 1.22/1.39       ( k2_xboole_0 @
% 1.22/1.39         ( k1_zfmisc_1 @ ( k4_xboole_0 @ A @ B ) ) @ 
% 1.22/1.39         ( k1_zfmisc_1 @ ( k4_xboole_0 @ B @ A ) ) ) @ 
% 1.22/1.39       ( k1_zfmisc_1 @ ( k5_xboole_0 @ A @ B ) ) ))).
% 1.22/1.39  thf(zf_stmt_0, negated_conjecture,
% 1.22/1.39    (~( ![A:$i,B:$i]:
% 1.22/1.39        ( r1_tarski @
% 1.22/1.39          ( k2_xboole_0 @
% 1.22/1.39            ( k1_zfmisc_1 @ ( k4_xboole_0 @ A @ B ) ) @ 
% 1.22/1.39            ( k1_zfmisc_1 @ ( k4_xboole_0 @ B @ A ) ) ) @ 
% 1.22/1.39          ( k1_zfmisc_1 @ ( k5_xboole_0 @ A @ B ) ) ) )),
% 1.22/1.39    inference('cnf.neg', [status(esa)], [t86_zfmisc_1])).
% 1.22/1.39  thf('0', plain,
% 1.22/1.39      (~ (r1_tarski @ 
% 1.22/1.39          (k2_xboole_0 @ (k1_zfmisc_1 @ (k4_xboole_0 @ sk_A @ sk_B)) @ 
% 1.22/1.39           (k1_zfmisc_1 @ (k4_xboole_0 @ sk_B @ sk_A))) @ 
% 1.22/1.39          (k1_zfmisc_1 @ (k5_xboole_0 @ sk_A @ sk_B)))),
% 1.22/1.39      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.22/1.39  thf(d6_xboole_0, axiom,
% 1.22/1.39    (![A:$i,B:$i]:
% 1.22/1.39     ( ( k5_xboole_0 @ A @ B ) =
% 1.22/1.39       ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ B @ A ) ) ))).
% 1.22/1.39  thf('1', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         ((k5_xboole_0 @ X0 @ X1)
% 1.22/1.39           = (k2_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ (k4_xboole_0 @ X1 @ X0)))),
% 1.22/1.39      inference('cnf', [status(esa)], [d6_xboole_0])).
% 1.22/1.39  thf(commutativity_k2_tarski, axiom,
% 1.22/1.39    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 1.22/1.39  thf('2', plain,
% 1.22/1.39      (![X9 : $i, X10 : $i]: ((k2_tarski @ X10 @ X9) = (k2_tarski @ X9 @ X10))),
% 1.22/1.39      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 1.22/1.39  thf(l51_zfmisc_1, axiom,
% 1.22/1.39    (![A:$i,B:$i]:
% 1.22/1.39     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 1.22/1.39  thf('3', plain,
% 1.22/1.39      (![X11 : $i, X12 : $i]:
% 1.22/1.39         ((k3_tarski @ (k2_tarski @ X11 @ X12)) = (k2_xboole_0 @ X11 @ X12))),
% 1.22/1.39      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 1.22/1.39  thf('4', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         ((k3_tarski @ (k2_tarski @ X1 @ X0)) = (k2_xboole_0 @ X0 @ X1))),
% 1.22/1.39      inference('sup+', [status(thm)], ['2', '3'])).
% 1.22/1.39  thf('5', plain,
% 1.22/1.39      (![X11 : $i, X12 : $i]:
% 1.22/1.39         ((k3_tarski @ (k2_tarski @ X11 @ X12)) = (k2_xboole_0 @ X11 @ X12))),
% 1.22/1.39      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 1.22/1.39  thf('6', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 1.22/1.39      inference('sup+', [status(thm)], ['4', '5'])).
% 1.22/1.39  thf(t7_xboole_1, axiom,
% 1.22/1.39    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 1.22/1.39  thf('7', plain,
% 1.22/1.39      (![X4 : $i, X5 : $i]: (r1_tarski @ X4 @ (k2_xboole_0 @ X4 @ X5))),
% 1.22/1.39      inference('cnf', [status(esa)], [t7_xboole_1])).
% 1.22/1.39  thf(t79_zfmisc_1, axiom,
% 1.22/1.39    (![A:$i,B:$i]:
% 1.22/1.39     ( ( r1_tarski @ A @ B ) =>
% 1.22/1.39       ( r1_tarski @ ( k1_zfmisc_1 @ A ) @ ( k1_zfmisc_1 @ B ) ) ))).
% 1.22/1.39  thf('8', plain,
% 1.22/1.39      (![X13 : $i, X14 : $i]:
% 1.22/1.39         ((r1_tarski @ (k1_zfmisc_1 @ X13) @ (k1_zfmisc_1 @ X14))
% 1.22/1.39          | ~ (r1_tarski @ X13 @ X14))),
% 1.22/1.39      inference('cnf', [status(esa)], [t79_zfmisc_1])).
% 1.22/1.39  thf('9', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         (r1_tarski @ (k1_zfmisc_1 @ X1) @ 
% 1.22/1.39          (k1_zfmisc_1 @ (k2_xboole_0 @ X1 @ X0)))),
% 1.22/1.39      inference('sup-', [status(thm)], ['7', '8'])).
% 1.22/1.39  thf('10', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         (r1_tarski @ (k1_zfmisc_1 @ X0) @ 
% 1.22/1.39          (k1_zfmisc_1 @ (k2_xboole_0 @ X1 @ X0)))),
% 1.22/1.39      inference('sup+', [status(thm)], ['6', '9'])).
% 1.22/1.39  thf('11', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         (r1_tarski @ (k1_zfmisc_1 @ X1) @ 
% 1.22/1.39          (k1_zfmisc_1 @ (k2_xboole_0 @ X1 @ X0)))),
% 1.22/1.39      inference('sup-', [status(thm)], ['7', '8'])).
% 1.22/1.39  thf(t8_xboole_1, axiom,
% 1.22/1.39    (![A:$i,B:$i,C:$i]:
% 1.22/1.39     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ C @ B ) ) =>
% 1.22/1.39       ( r1_tarski @ ( k2_xboole_0 @ A @ C ) @ B ) ))).
% 1.22/1.39  thf('12', plain,
% 1.22/1.39      (![X6 : $i, X7 : $i, X8 : $i]:
% 1.22/1.39         (~ (r1_tarski @ X6 @ X7)
% 1.22/1.39          | ~ (r1_tarski @ X8 @ X7)
% 1.22/1.39          | (r1_tarski @ (k2_xboole_0 @ X6 @ X8) @ X7))),
% 1.22/1.39      inference('cnf', [status(esa)], [t8_xboole_1])).
% 1.22/1.39  thf('13', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.22/1.39         ((r1_tarski @ (k2_xboole_0 @ (k1_zfmisc_1 @ X1) @ X2) @ 
% 1.22/1.39           (k1_zfmisc_1 @ (k2_xboole_0 @ X1 @ X0)))
% 1.22/1.39          | ~ (r1_tarski @ X2 @ (k1_zfmisc_1 @ (k2_xboole_0 @ X1 @ X0))))),
% 1.22/1.39      inference('sup-', [status(thm)], ['11', '12'])).
% 1.22/1.39  thf('14', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         (r1_tarski @ 
% 1.22/1.39          (k2_xboole_0 @ (k1_zfmisc_1 @ X1) @ (k1_zfmisc_1 @ X0)) @ 
% 1.22/1.39          (k1_zfmisc_1 @ (k2_xboole_0 @ X1 @ X0)))),
% 1.22/1.39      inference('sup-', [status(thm)], ['10', '13'])).
% 1.22/1.39  thf('15', plain,
% 1.22/1.39      (![X0 : $i, X1 : $i]:
% 1.22/1.39         (r1_tarski @ 
% 1.22/1.39          (k2_xboole_0 @ (k1_zfmisc_1 @ (k4_xboole_0 @ X1 @ X0)) @ 
% 1.22/1.39           (k1_zfmisc_1 @ (k4_xboole_0 @ X0 @ X1))) @ 
% 1.22/1.39          (k1_zfmisc_1 @ (k5_xboole_0 @ X1 @ X0)))),
% 1.22/1.39      inference('sup+', [status(thm)], ['1', '14'])).
% 1.22/1.39  thf('16', plain, ($false), inference('demod', [status(thm)], ['0', '15'])).
% 1.22/1.39  
% 1.22/1.39  % SZS output end Refutation
% 1.22/1.39  
% 1.22/1.40  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
