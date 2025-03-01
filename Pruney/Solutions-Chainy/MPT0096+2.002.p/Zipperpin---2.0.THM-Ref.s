%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Yg0cl8zmo1

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:25:50 EST 2020

% Result     : Theorem 0.37s
% Output     : Refutation 0.37s
% Verified   : 
% Statistics : Number of formulae       :   31 (  35 expanded)
%              Number of leaves         :   11 (  15 expanded)
%              Depth                    :    7
%              Number of atoms          :  225 ( 297 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal formula depth    :   11 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(t89_xboole_1,conjecture,(
    ! [A: $i,B: $i] :
      ( r1_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( r1_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t89_xboole_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ ( k3_xboole_0 @ sk_A @ sk_B ) @ ( k4_xboole_0 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( ( r2_hidden @ C @ B )
              & ( r2_hidden @ C @ A ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( ( r2_hidden @ C @ A )
                & ( r2_hidden @ C @ B ) ) ) ) )).

thf('1',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_xboole_0 @ X12 @ X13 )
      | ( r2_hidden @ ( sk_C @ X13 @ X12 ) @ X13 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('2',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_xboole_0 @ X12 @ X13 )
      | ( r2_hidden @ ( sk_C @ X13 @ X12 ) @ X12 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf(d5_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k4_xboole_0 @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( r2_hidden @ D @ A )
            & ~ ( r2_hidden @ D @ B ) ) ) ) )).

thf('3',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ~ ( r2_hidden @ X10 @ X9 )
      | ~ ( r2_hidden @ X10 @ X8 )
      | ( X9
       != ( k4_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[d5_xboole_0])).

thf('4',plain,(
    ! [X7: $i,X8: $i,X10: $i] :
      ( ~ ( r2_hidden @ X10 @ X8 )
      | ~ ( r2_hidden @ X10 @ ( k4_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X2 )
      | ~ ( r2_hidden @ ( sk_C @ X2 @ ( k4_xboole_0 @ X1 @ X0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','4'])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X0 )
      | ( r1_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_xboole_0 @ X12 @ X13 )
      | ( r2_hidden @ ( sk_C @ X13 @ X12 ) @ X12 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf(d4_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k3_xboole_0 @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( r2_hidden @ D @ A )
            & ( r2_hidden @ D @ B ) ) ) ) )).

thf('9',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X3 )
      | ( r2_hidden @ X4 @ X2 )
      | ( X3
       != ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d4_xboole_0])).

thf('10',plain,(
    ! [X1: $i,X2: $i,X4: $i] :
      ( ( r2_hidden @ X4 @ X2 )
      | ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) @ X2 )
      | ( r2_hidden @ ( sk_C @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['8','10'])).

thf('12',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_xboole_0 @ X12 @ X13 )
      | ( r2_hidden @ ( sk_C @ X13 @ X12 ) @ X13 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('13',plain,(
    ! [X12: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X14 @ X12 )
      | ~ ( r2_hidden @ X14 @ X15 )
      | ~ ( r1_xboole_0 @ X12 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_xboole_0 @ X1 @ X0 )
      | ~ ( r1_xboole_0 @ X0 @ X2 )
      | ~ ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) @ X2 )
      | ~ ( r1_xboole_0 @ X2 @ X0 )
      | ( r1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['11','14'])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_xboole_0 @ X2 @ X0 )
      | ( r1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) @ X2 ) ) ),
    inference(simplify,[status(thm)],['15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( r1_xboole_0 @ ( k3_xboole_0 @ X2 @ X0 ) @ ( k4_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['7','16'])).

thf('18',plain,(
    $false ),
    inference(demod,[status(thm)],['0','17'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Yg0cl8zmo1
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:11:08 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.37/0.55  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.37/0.55  % Solved by: fo/fo7.sh
% 0.37/0.55  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.37/0.55  % done 60 iterations in 0.064s
% 0.37/0.55  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.37/0.55  % SZS output start Refutation
% 0.37/0.55  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.37/0.55  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.37/0.55  thf(sk_B_type, type, sk_B: $i).
% 0.37/0.55  thf(sk_A_type, type, sk_A: $i).
% 0.37/0.55  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.37/0.55  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.37/0.55  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.37/0.55  thf(t89_xboole_1, conjecture,
% 0.37/0.55    (![A:$i,B:$i]:
% 0.37/0.55     ( r1_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ A @ B ) ))).
% 0.37/0.55  thf(zf_stmt_0, negated_conjecture,
% 0.37/0.55    (~( ![A:$i,B:$i]:
% 0.37/0.55        ( r1_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ A @ B ) ) )),
% 0.37/0.55    inference('cnf.neg', [status(esa)], [t89_xboole_1])).
% 0.37/0.55  thf('0', plain,
% 0.37/0.55      (~ (r1_xboole_0 @ (k3_xboole_0 @ sk_A @ sk_B) @ 
% 0.37/0.55          (k4_xboole_0 @ sk_A @ sk_B))),
% 0.37/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.37/0.55  thf(t3_xboole_0, axiom,
% 0.37/0.55    (![A:$i,B:$i]:
% 0.37/0.55     ( ( ~( ( ?[C:$i]: ( ( r2_hidden @ C @ B ) & ( r2_hidden @ C @ A ) ) ) & 
% 0.37/0.55            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.37/0.55       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.37/0.55            ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( r2_hidden @ C @ B ) ) ) ) ) ) ))).
% 0.37/0.55  thf('1', plain,
% 0.37/0.55      (![X12 : $i, X13 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ X12 @ X13) | (r2_hidden @ (sk_C @ X13 @ X12) @ X13))),
% 0.37/0.55      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.37/0.55  thf('2', plain,
% 0.37/0.55      (![X12 : $i, X13 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ X12 @ X13) | (r2_hidden @ (sk_C @ X13 @ X12) @ X12))),
% 0.37/0.55      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.37/0.55  thf(d5_xboole_0, axiom,
% 0.37/0.55    (![A:$i,B:$i,C:$i]:
% 0.37/0.55     ( ( ( C ) = ( k4_xboole_0 @ A @ B ) ) <=>
% 0.37/0.55       ( ![D:$i]:
% 0.37/0.55         ( ( r2_hidden @ D @ C ) <=>
% 0.37/0.55           ( ( r2_hidden @ D @ A ) & ( ~( r2_hidden @ D @ B ) ) ) ) ) ))).
% 0.37/0.55  thf('3', plain,
% 0.37/0.55      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.37/0.55         (~ (r2_hidden @ X10 @ X9)
% 0.37/0.55          | ~ (r2_hidden @ X10 @ X8)
% 0.37/0.55          | ((X9) != (k4_xboole_0 @ X7 @ X8)))),
% 0.37/0.55      inference('cnf', [status(esa)], [d5_xboole_0])).
% 0.37/0.55  thf('4', plain,
% 0.37/0.55      (![X7 : $i, X8 : $i, X10 : $i]:
% 0.37/0.55         (~ (r2_hidden @ X10 @ X8)
% 0.37/0.55          | ~ (r2_hidden @ X10 @ (k4_xboole_0 @ X7 @ X8)))),
% 0.37/0.55      inference('simplify', [status(thm)], ['3'])).
% 0.37/0.55  thf('5', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X2)
% 0.37/0.55          | ~ (r2_hidden @ (sk_C @ X2 @ (k4_xboole_0 @ X1 @ X0)) @ X0))),
% 0.37/0.55      inference('sup-', [status(thm)], ['2', '4'])).
% 0.37/0.55  thf('6', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X0)
% 0.37/0.55          | (r1_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X0))),
% 0.37/0.55      inference('sup-', [status(thm)], ['1', '5'])).
% 0.37/0.55  thf('7', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i]: (r1_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X0)),
% 0.37/0.55      inference('simplify', [status(thm)], ['6'])).
% 0.37/0.55  thf('8', plain,
% 0.37/0.55      (![X12 : $i, X13 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ X12 @ X13) | (r2_hidden @ (sk_C @ X13 @ X12) @ X12))),
% 0.37/0.55      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.37/0.55  thf(d4_xboole_0, axiom,
% 0.37/0.55    (![A:$i,B:$i,C:$i]:
% 0.37/0.55     ( ( ( C ) = ( k3_xboole_0 @ A @ B ) ) <=>
% 0.37/0.55       ( ![D:$i]:
% 0.37/0.55         ( ( r2_hidden @ D @ C ) <=>
% 0.37/0.55           ( ( r2_hidden @ D @ A ) & ( r2_hidden @ D @ B ) ) ) ) ))).
% 0.37/0.55  thf('9', plain,
% 0.37/0.55      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.37/0.55         (~ (r2_hidden @ X4 @ X3)
% 0.37/0.55          | (r2_hidden @ X4 @ X2)
% 0.37/0.55          | ((X3) != (k3_xboole_0 @ X1 @ X2)))),
% 0.37/0.55      inference('cnf', [status(esa)], [d4_xboole_0])).
% 0.37/0.55  thf('10', plain,
% 0.37/0.55      (![X1 : $i, X2 : $i, X4 : $i]:
% 0.37/0.55         ((r2_hidden @ X4 @ X2) | ~ (r2_hidden @ X4 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.37/0.55      inference('simplify', [status(thm)], ['9'])).
% 0.37/0.55  thf('11', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ (k3_xboole_0 @ X1 @ X0) @ X2)
% 0.37/0.55          | (r2_hidden @ (sk_C @ X2 @ (k3_xboole_0 @ X1 @ X0)) @ X0))),
% 0.37/0.55      inference('sup-', [status(thm)], ['8', '10'])).
% 0.37/0.55  thf('12', plain,
% 0.37/0.55      (![X12 : $i, X13 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ X12 @ X13) | (r2_hidden @ (sk_C @ X13 @ X12) @ X13))),
% 0.37/0.55      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.37/0.55  thf('13', plain,
% 0.37/0.55      (![X12 : $i, X14 : $i, X15 : $i]:
% 0.37/0.55         (~ (r2_hidden @ X14 @ X12)
% 0.37/0.55          | ~ (r2_hidden @ X14 @ X15)
% 0.37/0.55          | ~ (r1_xboole_0 @ X12 @ X15))),
% 0.37/0.55      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.37/0.55  thf('14', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ X1 @ X0)
% 0.37/0.55          | ~ (r1_xboole_0 @ X0 @ X2)
% 0.37/0.55          | ~ (r2_hidden @ (sk_C @ X0 @ X1) @ X2))),
% 0.37/0.55      inference('sup-', [status(thm)], ['12', '13'])).
% 0.37/0.55  thf('15', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.55         ((r1_xboole_0 @ (k3_xboole_0 @ X1 @ X0) @ X2)
% 0.37/0.55          | ~ (r1_xboole_0 @ X2 @ X0)
% 0.37/0.55          | (r1_xboole_0 @ (k3_xboole_0 @ X1 @ X0) @ X2))),
% 0.37/0.55      inference('sup-', [status(thm)], ['11', '14'])).
% 0.37/0.55  thf('16', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.55         (~ (r1_xboole_0 @ X2 @ X0)
% 0.37/0.55          | (r1_xboole_0 @ (k3_xboole_0 @ X1 @ X0) @ X2))),
% 0.37/0.55      inference('simplify', [status(thm)], ['15'])).
% 0.37/0.55  thf('17', plain,
% 0.37/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.37/0.55         (r1_xboole_0 @ (k3_xboole_0 @ X2 @ X0) @ (k4_xboole_0 @ X1 @ X0))),
% 0.37/0.55      inference('sup-', [status(thm)], ['7', '16'])).
% 0.37/0.55  thf('18', plain, ($false), inference('demod', [status(thm)], ['0', '17'])).
% 0.37/0.55  
% 0.37/0.55  % SZS output end Refutation
% 0.37/0.55  
% 0.37/0.56  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
