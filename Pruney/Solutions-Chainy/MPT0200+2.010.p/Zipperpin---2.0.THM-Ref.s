%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.tsJbSdQ1wp

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:25 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   34 (  47 expanded)
%              Number of leaves         :    9 (  20 expanded)
%              Depth                    :    9
%              Number of atoms          :  309 ( 452 expanded)
%              Number of equality atoms :   28 (  41 expanded)
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

thf(t125_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ D @ C @ B @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( k2_enumset1 @ A @ B @ C @ D )
        = ( k2_enumset1 @ D @ C @ B @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t125_enumset1])).

thf('0',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_D @ sk_C @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t103_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ B @ D @ C ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf('2',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_D @ sk_C @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['0','1'])).

thf(t107_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ D @ C @ B ) ) )).

thf('3',plain,(
    ! [X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_enumset1 @ X4 @ X7 @ X6 @ X5 )
      = ( k2_enumset1 @ X4 @ X5 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t107_enumset1])).

thf('4',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_D @ sk_B @ sk_A @ sk_C ) ),
    inference(demod,[status(thm)],['2','3'])).

thf(t123_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ D @ B @ C @ A ) ) )).

thf('5',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X11 @ X9 @ X10 @ X8 )
      = ( k2_enumset1 @ X8 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t123_enumset1])).

thf('6',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_C @ sk_B @ sk_A @ sk_D ) ),
    inference(demod,[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_enumset1 @ X4 @ X7 @ X6 @ X5 )
      = ( k2_enumset1 @ X4 @ X5 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t107_enumset1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X3 @ X0 @ X2 @ X1 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf('11',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_C @ sk_A @ sk_B @ sk_D ) ),
    inference(demod,[status(thm)],['6','9','10'])).

thf('12',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X11 @ X9 @ X10 @ X8 )
      = ( k2_enumset1 @ X8 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t123_enumset1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X2 @ X3 @ X1 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf('16',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['11','14','15'])).

thf('17',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X11 @ X9 @ X10 @ X8 )
      = ( k2_enumset1 @ X8 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t123_enumset1])).

thf('18',plain,(
    ! [X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_enumset1 @ X4 @ X7 @ X6 @ X5 )
      = ( k2_enumset1 @ X4 @ X5 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t107_enumset1])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X3 @ X1 @ X2 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X3 @ X0 @ X2 @ X1 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf('22',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['16','19','20','21'])).

thf('23',plain,(
    $false ),
    inference(simplify,[status(thm)],['22'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.tsJbSdQ1wp
% 0.12/0.34  % Computer   : n005.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 13:23:03 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.35  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.21/0.50  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.50  % Solved by: fo/fo7.sh
% 0.21/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.50  % done 20 iterations in 0.047s
% 0.21/0.50  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.50  % SZS output start Refutation
% 0.21/0.50  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.21/0.50  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.50  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.50  thf(t125_enumset1, conjecture,
% 0.21/0.50    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.50     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ D @ C @ B @ A ) ))).
% 0.21/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.50    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.50        ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ D @ C @ B @ A ) ) )),
% 0.21/0.50    inference('cnf.neg', [status(esa)], [t125_enumset1])).
% 0.21/0.50  thf('0', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_D @ sk_C @ sk_B @ sk_A))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(t103_enumset1, axiom,
% 0.21/0.50    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.50     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ B @ D @ C ) ))).
% 0.21/0.50  thf('1', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [t103_enumset1])).
% 0.21/0.50  thf('2', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_D @ sk_C @ sk_A @ sk_B))),
% 0.21/0.50      inference('demod', [status(thm)], ['0', '1'])).
% 0.21/0.50  thf(t107_enumset1, axiom,
% 0.21/0.50    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.50     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ D @ C @ B ) ))).
% 0.21/0.50  thf('3', plain,
% 0.21/0.50      (![X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X4 @ X7 @ X6 @ X5) = (k2_enumset1 @ X4 @ X5 @ X6 @ X7))),
% 0.21/0.50      inference('cnf', [status(esa)], [t107_enumset1])).
% 0.21/0.50  thf('4', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_D @ sk_B @ sk_A @ sk_C))),
% 0.21/0.50      inference('demod', [status(thm)], ['2', '3'])).
% 0.21/0.50  thf(t123_enumset1, axiom,
% 0.21/0.50    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.50     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ D @ B @ C @ A ) ))).
% 0.21/0.50  thf('5', plain,
% 0.21/0.50      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X11 @ X9 @ X10 @ X8)
% 0.21/0.50           = (k2_enumset1 @ X8 @ X9 @ X10 @ X11))),
% 0.21/0.50      inference('cnf', [status(esa)], [t123_enumset1])).
% 0.21/0.50  thf('6', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_C @ sk_B @ sk_A @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['4', '5'])).
% 0.21/0.50  thf('7', plain,
% 0.21/0.50      (![X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X4 @ X7 @ X6 @ X5) = (k2_enumset1 @ X4 @ X5 @ X6 @ X7))),
% 0.21/0.50      inference('cnf', [status(esa)], [t107_enumset1])).
% 0.21/0.50  thf('8', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [t103_enumset1])).
% 0.21/0.50  thf('9', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X3 @ X0 @ X2 @ X1) = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.21/0.50      inference('sup+', [status(thm)], ['7', '8'])).
% 0.21/0.50  thf('10', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [t103_enumset1])).
% 0.21/0.50  thf('11', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_C @ sk_A @ sk_B @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['6', '9', '10'])).
% 0.21/0.50  thf('12', plain,
% 0.21/0.50      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X11 @ X9 @ X10 @ X8)
% 0.21/0.50           = (k2_enumset1 @ X8 @ X9 @ X10 @ X11))),
% 0.21/0.50      inference('cnf', [status(esa)], [t123_enumset1])).
% 0.21/0.50  thf('13', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [t103_enumset1])).
% 0.21/0.50  thf('14', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X2 @ X3 @ X1) = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.21/0.50      inference('sup+', [status(thm)], ['12', '13'])).
% 0.21/0.50  thf('15', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [t103_enumset1])).
% 0.21/0.50  thf('16', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['11', '14', '15'])).
% 0.21/0.50  thf('17', plain,
% 0.21/0.50      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X11 @ X9 @ X10 @ X8)
% 0.21/0.50           = (k2_enumset1 @ X8 @ X9 @ X10 @ X11))),
% 0.21/0.50      inference('cnf', [status(esa)], [t123_enumset1])).
% 0.21/0.50  thf('18', plain,
% 0.21/0.50      (![X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X4 @ X7 @ X6 @ X5) = (k2_enumset1 @ X4 @ X5 @ X6 @ X7))),
% 0.21/0.50      inference('cnf', [status(esa)], [t107_enumset1])).
% 0.21/0.50  thf('19', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X3 @ X1 @ X2) = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.21/0.50      inference('sup+', [status(thm)], ['17', '18'])).
% 0.21/0.50  thf('20', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [t103_enumset1])).
% 0.21/0.50  thf('21', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((k2_enumset1 @ X3 @ X0 @ X2 @ X1) = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.21/0.50      inference('sup+', [status(thm)], ['7', '8'])).
% 0.21/0.50  thf('22', plain,
% 0.21/0.50      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.21/0.50         != (k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['16', '19', '20', '21'])).
% 0.21/0.50  thf('23', plain, ($false), inference('simplify', [status(thm)], ['22'])).
% 0.21/0.50  
% 0.21/0.50  % SZS output end Refutation
% 0.21/0.50  
% 0.21/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
