%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.7wNLvou8oy

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:46 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   46 (  51 expanded)
%              Number of leaves         :   18 (  21 expanded)
%              Depth                    :    8
%              Number of atoms          :  262 ( 308 expanded)
%              Number of equality atoms :   29 (  37 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(d1_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_tarski @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( C = A ) ) ) )).

thf('0',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( X26 != X25 )
      | ( r2_hidden @ X26 @ X27 )
      | ( X27
       != ( k1_tarski @ X25 ) ) ) ),
    inference(cnf,[status(esa)],[d1_tarski])).

thf('1',plain,(
    ! [X25: $i] :
      ( r2_hidden @ X25 @ ( k1_tarski @ X25 ) ) ),
    inference(simplify,[status(thm)],['0'])).

thf(t6_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
     => ( A = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
       => ( A = B ) ) ),
    inference('cnf.neg',[status(esa)],[t6_zfmisc_1])).

thf('2',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l3_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ ( k1_tarski @ B ) )
    <=> ( ( A = k1_xboole_0 )
        | ( A
          = ( k1_tarski @ B ) ) ) ) )).

thf('3',plain,(
    ! [X51: $i,X52: $i] :
      ( ( X52
        = ( k1_tarski @ X51 ) )
      | ( X52 = k1_xboole_0 )
      | ~ ( r1_tarski @ X52 @ ( k1_tarski @ X51 ) ) ) ),
    inference(cnf,[status(esa)],[l3_zfmisc_1])).

thf('4',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
    | ( ( k1_tarski @ sk_A )
      = ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X25: $i,X27: $i,X28: $i] :
      ( ~ ( r2_hidden @ X28 @ X27 )
      | ( X28 = X25 )
      | ( X27
       != ( k1_tarski @ X25 ) ) ) ),
    inference(cnf,[status(esa)],[d1_tarski])).

thf('6',plain,(
    ! [X25: $i,X28: $i] :
      ( ( X28 = X25 )
      | ~ ( r2_hidden @ X28 @ ( k1_tarski @ X25 ) ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( ( k1_tarski @ sk_A )
        = k1_xboole_0 )
      | ( X0 = sk_B ) ) ),
    inference('sup-',[status(thm)],['4','6'])).

thf('8',plain,
    ( ( sk_A = sk_B )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['1','7'])).

thf('9',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( k1_tarski @ sk_A )
    = k1_xboole_0 ),
    inference('simplify_reflect-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X25: $i] :
      ( r2_hidden @ X25 @ ( k1_tarski @ X25 ) ) ),
    inference(simplify,[status(thm)],['0'])).

thf('12',plain,(
    r2_hidden @ sk_A @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['10','11'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('13',plain,(
    ! [X9: $i,X10: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X9 @ X10 ) @ X9 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('14',plain,(
    ! [X11: $i] :
      ( r1_tarski @ k1_xboole_0 @ X11 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('15',plain,(
    ! [X4: $i,X6: $i] :
      ( ( X4 = X6 )
      | ~ ( r1_tarski @ X6 @ X4 )
      | ~ ( r1_tarski @ X4 @ X6 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ k1_xboole_0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['13','16'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('18',plain,(
    ! [X12: $i] :
      ( ( k4_xboole_0 @ X12 @ k1_xboole_0 )
      = X12 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('19',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ X8 )
      = ( k5_xboole_0 @ X7 @ ( k3_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf(t1_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r2_hidden @ A @ ( k5_xboole_0 @ B @ C ) )
    <=> ~ ( ( r2_hidden @ A @ B )
        <=> ( r2_hidden @ A @ C ) ) ) )).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( r2_hidden @ X0 @ X2 )
      | ~ ( r2_hidden @ X0 @ ( k5_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_0])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k4_xboole_0 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ X2 @ X1 ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ X0 )
      | ~ ( r2_hidden @ X1 @ X0 )
      | ~ ( r2_hidden @ X1 @ ( k3_xboole_0 @ X0 @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['18','21'])).

thf('23',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k3_xboole_0 @ X0 @ k1_xboole_0 ) )
      | ~ ( r2_hidden @ X1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['22'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['17','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    $false ),
    inference('sup-',[status(thm)],['12','25'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.7wNLvou8oy
% 0.13/0.35  % Computer   : n023.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 19:19:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.36  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.21/0.50  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.50  % Solved by: fo/fo7.sh
% 0.21/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.50  % done 42 iterations in 0.025s
% 0.21/0.50  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.50  % SZS output start Refutation
% 0.21/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.50  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.21/0.50  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.50  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.50  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.50  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.50  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.50  thf(d1_tarski, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( ( B ) = ( k1_tarski @ A ) ) <=>
% 0.21/0.50       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( ( C ) = ( A ) ) ) ) ))).
% 0.21/0.50  thf('0', plain,
% 0.21/0.50      (![X25 : $i, X26 : $i, X27 : $i]:
% 0.21/0.50         (((X26) != (X25))
% 0.21/0.50          | (r2_hidden @ X26 @ X27)
% 0.21/0.50          | ((X27) != (k1_tarski @ X25)))),
% 0.21/0.50      inference('cnf', [status(esa)], [d1_tarski])).
% 0.21/0.50  thf('1', plain, (![X25 : $i]: (r2_hidden @ X25 @ (k1_tarski @ X25))),
% 0.21/0.50      inference('simplify', [status(thm)], ['0'])).
% 0.21/0.50  thf(t6_zfmisc_1, conjecture,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =>
% 0.21/0.50       ( ( A ) = ( B ) ) ))).
% 0.21/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.50    (~( ![A:$i,B:$i]:
% 0.21/0.50        ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =>
% 0.21/0.50          ( ( A ) = ( B ) ) ) )),
% 0.21/0.50    inference('cnf.neg', [status(esa)], [t6_zfmisc_1])).
% 0.21/0.50  thf('2', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_B))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(l3_zfmisc_1, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( r1_tarski @ A @ ( k1_tarski @ B ) ) <=>
% 0.21/0.50       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( A ) = ( k1_tarski @ B ) ) ) ))).
% 0.21/0.50  thf('3', plain,
% 0.21/0.50      (![X51 : $i, X52 : $i]:
% 0.21/0.50         (((X52) = (k1_tarski @ X51))
% 0.21/0.50          | ((X52) = (k1_xboole_0))
% 0.21/0.50          | ~ (r1_tarski @ X52 @ (k1_tarski @ X51)))),
% 0.21/0.50      inference('cnf', [status(esa)], [l3_zfmisc_1])).
% 0.21/0.50  thf('4', plain,
% 0.21/0.50      ((((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.21/0.50        | ((k1_tarski @ sk_A) = (k1_tarski @ sk_B)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.50  thf('5', plain,
% 0.21/0.50      (![X25 : $i, X27 : $i, X28 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X28 @ X27)
% 0.21/0.50          | ((X28) = (X25))
% 0.21/0.50          | ((X27) != (k1_tarski @ X25)))),
% 0.21/0.50      inference('cnf', [status(esa)], [d1_tarski])).
% 0.21/0.50  thf('6', plain,
% 0.21/0.50      (![X25 : $i, X28 : $i]:
% 0.21/0.50         (((X28) = (X25)) | ~ (r2_hidden @ X28 @ (k1_tarski @ X25)))),
% 0.21/0.50      inference('simplify', [status(thm)], ['5'])).
% 0.21/0.50  thf('7', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.21/0.50          | ((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.21/0.50          | ((X0) = (sk_B)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['4', '6'])).
% 0.21/0.50  thf('8', plain, ((((sk_A) = (sk_B)) | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['1', '7'])).
% 0.21/0.50  thf('9', plain, (((sk_A) != (sk_B))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('10', plain, (((k1_tarski @ sk_A) = (k1_xboole_0))),
% 0.21/0.50      inference('simplify_reflect-', [status(thm)], ['8', '9'])).
% 0.21/0.50  thf('11', plain, (![X25 : $i]: (r2_hidden @ X25 @ (k1_tarski @ X25))),
% 0.21/0.50      inference('simplify', [status(thm)], ['0'])).
% 0.21/0.50  thf('12', plain, ((r2_hidden @ sk_A @ k1_xboole_0)),
% 0.21/0.50      inference('sup+', [status(thm)], ['10', '11'])).
% 0.21/0.50  thf(t17_xboole_1, axiom,
% 0.21/0.50    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.21/0.50  thf('13', plain,
% 0.21/0.50      (![X9 : $i, X10 : $i]: (r1_tarski @ (k3_xboole_0 @ X9 @ X10) @ X9)),
% 0.21/0.50      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.21/0.50  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.21/0.50  thf('14', plain, (![X11 : $i]: (r1_tarski @ k1_xboole_0 @ X11)),
% 0.21/0.50      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.21/0.50  thf(d10_xboole_0, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.21/0.50  thf('15', plain,
% 0.21/0.50      (![X4 : $i, X6 : $i]:
% 0.21/0.50         (((X4) = (X6)) | ~ (r1_tarski @ X6 @ X4) | ~ (r1_tarski @ X4 @ X6))),
% 0.21/0.50      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.21/0.50  thf('16', plain,
% 0.21/0.50      (![X0 : $i]: (~ (r1_tarski @ X0 @ k1_xboole_0) | ((X0) = (k1_xboole_0)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['14', '15'])).
% 0.21/0.50  thf('17', plain,
% 0.21/0.50      (![X0 : $i]: ((k3_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.21/0.50      inference('sup-', [status(thm)], ['13', '16'])).
% 0.21/0.50  thf(t3_boole, axiom,
% 0.21/0.50    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.21/0.50  thf('18', plain, (![X12 : $i]: ((k4_xboole_0 @ X12 @ k1_xboole_0) = (X12))),
% 0.21/0.50      inference('cnf', [status(esa)], [t3_boole])).
% 0.21/0.50  thf(t100_xboole_1, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.21/0.50  thf('19', plain,
% 0.21/0.50      (![X7 : $i, X8 : $i]:
% 0.21/0.50         ((k4_xboole_0 @ X7 @ X8)
% 0.21/0.50           = (k5_xboole_0 @ X7 @ (k3_xboole_0 @ X7 @ X8)))),
% 0.21/0.50      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.21/0.50  thf(t1_xboole_0, axiom,
% 0.21/0.50    (![A:$i,B:$i,C:$i]:
% 0.21/0.50     ( ( r2_hidden @ A @ ( k5_xboole_0 @ B @ C ) ) <=>
% 0.21/0.50       ( ~( ( r2_hidden @ A @ B ) <=> ( r2_hidden @ A @ C ) ) ) ))).
% 0.21/0.50  thf('20', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X0 @ X1)
% 0.21/0.50          | ~ (r2_hidden @ X0 @ X2)
% 0.21/0.50          | ~ (r2_hidden @ X0 @ (k5_xboole_0 @ X1 @ X2)))),
% 0.21/0.50      inference('cnf', [status(esa)], [t1_xboole_0])).
% 0.21/0.50  thf('21', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X2 @ (k4_xboole_0 @ X1 @ X0))
% 0.21/0.50          | ~ (r2_hidden @ X2 @ (k3_xboole_0 @ X1 @ X0))
% 0.21/0.50          | ~ (r2_hidden @ X2 @ X1))),
% 0.21/0.50      inference('sup-', [status(thm)], ['19', '20'])).
% 0.21/0.50  thf('22', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X1 @ X0)
% 0.21/0.50          | ~ (r2_hidden @ X1 @ X0)
% 0.21/0.50          | ~ (r2_hidden @ X1 @ (k3_xboole_0 @ X0 @ k1_xboole_0)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['18', '21'])).
% 0.21/0.50  thf('23', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X1 @ (k3_xboole_0 @ X0 @ k1_xboole_0))
% 0.21/0.50          | ~ (r2_hidden @ X1 @ X0))),
% 0.21/0.50      inference('simplify', [status(thm)], ['22'])).
% 0.21/0.50  thf('24', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X0 @ k1_xboole_0) | ~ (r2_hidden @ X0 @ k1_xboole_0))),
% 0.21/0.50      inference('sup-', [status(thm)], ['17', '23'])).
% 0.21/0.50  thf('25', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.21/0.50      inference('simplify', [status(thm)], ['24'])).
% 0.21/0.50  thf('26', plain, ($false), inference('sup-', [status(thm)], ['12', '25'])).
% 0.21/0.50  
% 0.21/0.50  % SZS output end Refutation
% 0.21/0.50  
% 0.21/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
