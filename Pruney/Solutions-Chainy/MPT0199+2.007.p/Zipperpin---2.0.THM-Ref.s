%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OllrcnFWSs

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:22 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   25 (  33 expanded)
%              Number of leaves         :    8 (  16 expanded)
%              Depth                    :    6
%              Number of atoms          :  210 ( 298 expanded)
%              Number of equality atoms :   19 (  27 expanded)
%              Maximal formula depth    :   11 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(t123_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ D @ B @ C @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( k2_enumset1 @ A @ B @ C @ D )
        = ( k2_enumset1 @ D @ B @ C @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t123_enumset1])).

thf('0',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_D @ sk_B @ sk_C @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t105_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ C @ D @ B ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('2',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_D @ sk_A @ sk_B @ sk_C ) ),
    inference(demod,[status(thm)],['0','1'])).

thf(t119_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ C @ D @ B @ A ) ) )).

thf('3',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X11 @ X10 @ X8 @ X9 )
      = ( k2_enumset1 @ X8 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t119_enumset1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('5',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X11 @ X10 @ X8 @ X9 )
      = ( k2_enumset1 @ X8 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t119_enumset1])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('8',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['2','3','4','5','6','7'])).

thf('9',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X11 @ X10 @ X8 @ X9 )
      = ( k2_enumset1 @ X8 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t119_enumset1])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X1 @ X3 @ X0 @ X2 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t105_enumset1])).

thf('14',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['8','11','12','13'])).

thf('15',plain,(
    $false ),
    inference(simplify,[status(thm)],['14'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OllrcnFWSs
% 0.14/0.34  % Computer   : n018.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 21:00:12 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.20/0.54  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.54  % Solved by: fo/fo7.sh
% 0.20/0.54  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.54  % done 19 iterations in 0.074s
% 0.20/0.54  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.54  % SZS output start Refutation
% 0.20/0.54  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.20/0.54  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.54  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.54  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.54  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.54  thf(t123_enumset1, conjecture,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ D @ B @ C @ A ) ))).
% 0.20/0.54  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.54    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54        ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ D @ B @ C @ A ) ) )),
% 0.20/0.54    inference('cnf.neg', [status(esa)], [t123_enumset1])).
% 0.20/0.54  thf('0', plain,
% 0.20/0.54      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.54         != (k2_enumset1 @ sk_D @ sk_B @ sk_C @ sk_A))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(t105_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ C @ D @ B ) ))).
% 0.20/0.54  thf('1', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('2', plain,
% 0.20/0.54      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.54         != (k2_enumset1 @ sk_D @ sk_A @ sk_B @ sk_C))),
% 0.20/0.54      inference('demod', [status(thm)], ['0', '1'])).
% 0.20/0.54  thf(t119_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ C @ D @ B @ A ) ))).
% 0.20/0.54  thf('3', plain,
% 0.20/0.54      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X11 @ X10 @ X8 @ X9)
% 0.20/0.54           = (k2_enumset1 @ X8 @ X9 @ X10 @ X11))),
% 0.20/0.54      inference('cnf', [status(esa)], [t119_enumset1])).
% 0.20/0.54  thf('4', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('5', plain,
% 0.20/0.54      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X11 @ X10 @ X8 @ X9)
% 0.20/0.54           = (k2_enumset1 @ X8 @ X9 @ X10 @ X11))),
% 0.20/0.54      inference('cnf', [status(esa)], [t119_enumset1])).
% 0.20/0.54  thf('6', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('7', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('8', plain,
% 0.20/0.54      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.54         != (k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D))),
% 0.20/0.54      inference('demod', [status(thm)], ['2', '3', '4', '5', '6', '7'])).
% 0.20/0.54  thf('9', plain,
% 0.20/0.54      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X11 @ X10 @ X8 @ X9)
% 0.20/0.54           = (k2_enumset1 @ X8 @ X9 @ X10 @ X11))),
% 0.20/0.54      inference('cnf', [status(esa)], [t119_enumset1])).
% 0.20/0.54  thf('10', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('11', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X1 @ X3 @ X0 @ X2) = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.20/0.54      inference('sup+', [status(thm)], ['9', '10'])).
% 0.20/0.54  thf('12', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('13', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.54      inference('cnf', [status(esa)], [t105_enumset1])).
% 0.20/0.54  thf('14', plain,
% 0.20/0.54      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.54         != (k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.20/0.54      inference('demod', [status(thm)], ['8', '11', '12', '13'])).
% 0.20/0.54  thf('15', plain, ($false), inference('simplify', [status(thm)], ['14'])).
% 0.20/0.54  
% 0.20/0.54  % SZS output end Refutation
% 0.20/0.54  
% 0.20/0.55  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
