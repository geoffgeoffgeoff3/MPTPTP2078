%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.XiHOsQ0y32

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:33:02 EST 2020

% Result     : Theorem 0.24s
% Output     : Refutation 0.24s
% Verified   : 
% Statistics : Number of formulae       :   27 (  27 expanded)
%              Number of leaves         :   14 (  14 expanded)
%              Depth                    :    6
%              Number of atoms          :  113 ( 113 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(t50_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
     != k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
       != k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t50_zfmisc_1])).

thf('0',plain,
    ( ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B_1 ) @ sk_C )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k2_xboole_0 @ B @ A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf('2',plain,
    ( ( k2_xboole_0 @ sk_C @ ( k2_tarski @ sk_A @ sk_B_1 ) )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['0','1'])).

thf(fc5_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ~ ( v1_xboole_0 @ ( k2_xboole_0 @ B @ A ) ) ) )).

thf('3',plain,(
    ! [X5: $i,X6: $i] :
      ( ( v1_xboole_0 @ X5 )
      | ~ ( v1_xboole_0 @ ( k2_xboole_0 @ X6 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[fc5_xboole_0])).

thf('4',plain,
    ( ~ ( v1_xboole_0 @ k1_xboole_0 )
    | ( v1_xboole_0 @ ( k2_tarski @ sk_A @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('5',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('6',plain,(
    v1_xboole_0 @ ( k2_tarski @ sk_A @ sk_B_1 ) ),
    inference(demod,[status(thm)],['4','5'])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('7',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ( X8 != X7 )
      | ( r2_hidden @ X8 @ X9 )
      | ( X9
       != ( k2_tarski @ X10 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('8',plain,(
    ! [X7: $i,X10: $i] :
      ( r2_hidden @ X7 @ ( k2_tarski @ X10 @ X7 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('9',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ X2 @ X3 )
      | ~ ( v1_xboole_0 @ X3 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ~ ( v1_xboole_0 @ ( k2_tarski @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    $false ),
    inference('sup-',[status(thm)],['6','10'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.13/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.16  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.XiHOsQ0y32
% 0.15/0.37  % Computer   : n004.cluster.edu
% 0.15/0.37  % Model      : x86_64 x86_64
% 0.15/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.37  % Memory     : 8042.1875MB
% 0.15/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.37  % CPULimit   : 60
% 0.15/0.37  % DateTime   : Tue Dec  1 11:27:09 EST 2020
% 0.15/0.37  % CPUTime    : 
% 0.15/0.37  % Running portfolio for 600 s
% 0.15/0.37  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.15/0.37  % Number of cores: 8
% 0.15/0.37  % Python version: Python 3.6.8
% 0.15/0.37  % Running in FO mode
% 0.24/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.24/0.49  % Solved by: fo/fo7.sh
% 0.24/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.24/0.49  % done 12 iterations in 0.013s
% 0.24/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.24/0.49  % SZS output start Refutation
% 0.24/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.24/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.24/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.24/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.24/0.49  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.24/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.24/0.49  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.24/0.49  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.24/0.49  thf(t50_zfmisc_1, conjecture,
% 0.24/0.49    (![A:$i,B:$i,C:$i]:
% 0.24/0.49     ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) != ( k1_xboole_0 ) ))).
% 0.24/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.24/0.49    (~( ![A:$i,B:$i,C:$i]:
% 0.24/0.49        ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) != ( k1_xboole_0 ) ) )),
% 0.24/0.49    inference('cnf.neg', [status(esa)], [t50_zfmisc_1])).
% 0.24/0.49  thf('0', plain,
% 0.24/0.49      (((k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B_1) @ sk_C) = (k1_xboole_0))),
% 0.24/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.49  thf(commutativity_k2_xboole_0, axiom,
% 0.24/0.49    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ B ) = ( k2_xboole_0 @ B @ A ) ))).
% 0.24/0.49  thf('1', plain,
% 0.24/0.49      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.24/0.49      inference('cnf', [status(esa)], [commutativity_k2_xboole_0])).
% 0.24/0.49  thf('2', plain,
% 0.24/0.49      (((k2_xboole_0 @ sk_C @ (k2_tarski @ sk_A @ sk_B_1)) = (k1_xboole_0))),
% 0.24/0.49      inference('demod', [status(thm)], ['0', '1'])).
% 0.24/0.49  thf(fc5_xboole_0, axiom,
% 0.24/0.49    (![A:$i,B:$i]:
% 0.24/0.49     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.24/0.49       ( ~( v1_xboole_0 @ ( k2_xboole_0 @ B @ A ) ) ) ))).
% 0.24/0.49  thf('3', plain,
% 0.24/0.49      (![X5 : $i, X6 : $i]:
% 0.24/0.49         ((v1_xboole_0 @ X5) | ~ (v1_xboole_0 @ (k2_xboole_0 @ X6 @ X5)))),
% 0.24/0.49      inference('cnf', [status(esa)], [fc5_xboole_0])).
% 0.24/0.49  thf('4', plain,
% 0.24/0.49      ((~ (v1_xboole_0 @ k1_xboole_0)
% 0.24/0.49        | (v1_xboole_0 @ (k2_tarski @ sk_A @ sk_B_1)))),
% 0.24/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.24/0.49  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.24/0.49  thf('5', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.24/0.49      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.24/0.49  thf('6', plain, ((v1_xboole_0 @ (k2_tarski @ sk_A @ sk_B_1))),
% 0.24/0.49      inference('demod', [status(thm)], ['4', '5'])).
% 0.24/0.49  thf(d2_tarski, axiom,
% 0.24/0.49    (![A:$i,B:$i,C:$i]:
% 0.24/0.49     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.24/0.49       ( ![D:$i]:
% 0.24/0.49         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.24/0.49  thf('7', plain,
% 0.24/0.49      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.24/0.49         (((X8) != (X7))
% 0.24/0.49          | (r2_hidden @ X8 @ X9)
% 0.24/0.49          | ((X9) != (k2_tarski @ X10 @ X7)))),
% 0.24/0.49      inference('cnf', [status(esa)], [d2_tarski])).
% 0.24/0.49  thf('8', plain,
% 0.24/0.49      (![X7 : $i, X10 : $i]: (r2_hidden @ X7 @ (k2_tarski @ X10 @ X7))),
% 0.24/0.49      inference('simplify', [status(thm)], ['7'])).
% 0.24/0.49  thf(d1_xboole_0, axiom,
% 0.24/0.49    (![A:$i]:
% 0.24/0.49     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.24/0.49  thf('9', plain,
% 0.24/0.49      (![X2 : $i, X3 : $i]: (~ (r2_hidden @ X2 @ X3) | ~ (v1_xboole_0 @ X3))),
% 0.24/0.49      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.24/0.49  thf('10', plain,
% 0.24/0.49      (![X0 : $i, X1 : $i]: ~ (v1_xboole_0 @ (k2_tarski @ X1 @ X0))),
% 0.24/0.49      inference('sup-', [status(thm)], ['8', '9'])).
% 0.24/0.49  thf('11', plain, ($false), inference('sup-', [status(thm)], ['6', '10'])).
% 0.24/0.49  
% 0.24/0.49  % SZS output end Refutation
% 0.24/0.49  
% 0.24/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
