%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.jN9Ze57tGf

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:24:36 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   38 (  44 expanded)
%              Number of leaves         :   16 (  20 expanded)
%              Depth                    :   12
%              Number of atoms          :  208 ( 280 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(t63_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ B @ C ) )
     => ( r1_xboole_0 @ A @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( r1_tarski @ A @ B )
          & ( r1_xboole_0 @ B @ C ) )
       => ( r1_xboole_0 @ A @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t63_xboole_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ sk_A @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_xboole_0 @ sk_B @ sk_C_1 ),
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

thf('2',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r1_xboole_0 @ X6 @ X7 )
      | ( r2_hidden @ ( sk_C @ X7 @ X6 ) @ X7 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('3',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r1_xboole_0 @ X6 @ X7 )
      | ( r2_hidden @ ( sk_C @ X7 @ X6 ) @ X6 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('4',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('5',plain,(
    ! [X10: $i,X12: $i] :
      ( ( ( k4_xboole_0 @ X10 @ X12 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X10 @ X12 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('6',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_B )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['4','5'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('7',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k4_xboole_0 @ X14 @ X15 ) )
      = ( k3_xboole_0 @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('8',plain,
    ( ( k4_xboole_0 @ sk_A @ k1_xboole_0 )
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('9',plain,(
    ! [X13: $i] :
      ( ( k4_xboole_0 @ X13 @ k1_xboole_0 )
      = X13 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('10',plain,
    ( sk_A
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['8','9'])).

thf(d4_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k3_xboole_0 @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( r2_hidden @ D @ A )
            & ( r2_hidden @ D @ B ) ) ) ) )).

thf('11',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X3 )
      | ( r2_hidden @ X4 @ X2 )
      | ( X3
       != ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d4_xboole_0])).

thf('12',plain,(
    ! [X1: $i,X2: $i,X4: $i] :
      ( ( r2_hidden @ X4 @ X2 )
      | ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['11'])).

thf('13',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['10','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( r1_xboole_0 @ sk_A @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_A ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','13'])).

thf('15',plain,(
    ! [X6: $i,X8: $i,X9: $i] :
      ( ~ ( r2_hidden @ X8 @ X6 )
      | ~ ( r2_hidden @ X8 @ X9 )
      | ~ ( r1_xboole_0 @ X6 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ sk_A @ X0 )
      | ~ ( r1_xboole_0 @ sk_B @ X1 )
      | ~ ( r2_hidden @ ( sk_C @ X0 @ sk_A ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( r1_xboole_0 @ sk_A @ X0 )
      | ~ ( r1_xboole_0 @ sk_B @ X0 )
      | ( r1_xboole_0 @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ sk_B @ X0 )
      | ( r1_xboole_0 @ sk_A @ X0 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    r1_xboole_0 @ sk_A @ sk_C_1 ),
    inference('sup-',[status(thm)],['1','18'])).

thf('20',plain,(
    $false ),
    inference(demod,[status(thm)],['0','19'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.jN9Ze57tGf
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 18:15:17 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.48  % Solved by: fo/fo7.sh
% 0.20/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.48  % done 42 iterations in 0.022s
% 0.20/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.48  % SZS output start Refutation
% 0.20/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.48  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.20/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.48  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.20/0.48  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.48  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.48  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.20/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.48  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.48  thf(t63_xboole_1, conjecture,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ B @ C ) ) =>
% 0.20/0.48       ( r1_xboole_0 @ A @ C ) ))).
% 0.20/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.48    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.48        ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ B @ C ) ) =>
% 0.20/0.48          ( r1_xboole_0 @ A @ C ) ) )),
% 0.20/0.48    inference('cnf.neg', [status(esa)], [t63_xboole_1])).
% 0.20/0.48  thf('0', plain, (~ (r1_xboole_0 @ sk_A @ sk_C_1)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('1', plain, ((r1_xboole_0 @ sk_B @ sk_C_1)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(t3_xboole_0, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( ~( ( ?[C:$i]: ( ( r2_hidden @ C @ B ) & ( r2_hidden @ C @ A ) ) ) & 
% 0.20/0.48            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.20/0.48       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.20/0.48            ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( r2_hidden @ C @ B ) ) ) ) ) ) ))).
% 0.20/0.48  thf('2', plain,
% 0.20/0.48      (![X6 : $i, X7 : $i]:
% 0.20/0.48         ((r1_xboole_0 @ X6 @ X7) | (r2_hidden @ (sk_C @ X7 @ X6) @ X7))),
% 0.20/0.48      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.20/0.48  thf('3', plain,
% 0.20/0.48      (![X6 : $i, X7 : $i]:
% 0.20/0.48         ((r1_xboole_0 @ X6 @ X7) | (r2_hidden @ (sk_C @ X7 @ X6) @ X6))),
% 0.20/0.48      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.20/0.48  thf('4', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(l32_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.48  thf('5', plain,
% 0.20/0.48      (![X10 : $i, X12 : $i]:
% 0.20/0.48         (((k4_xboole_0 @ X10 @ X12) = (k1_xboole_0))
% 0.20/0.48          | ~ (r1_tarski @ X10 @ X12))),
% 0.20/0.48      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.20/0.48  thf('6', plain, (((k4_xboole_0 @ sk_A @ sk_B) = (k1_xboole_0))),
% 0.20/0.48      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.48  thf(t48_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.20/0.48  thf('7', plain,
% 0.20/0.48      (![X14 : $i, X15 : $i]:
% 0.20/0.48         ((k4_xboole_0 @ X14 @ (k4_xboole_0 @ X14 @ X15))
% 0.20/0.48           = (k3_xboole_0 @ X14 @ X15))),
% 0.20/0.48      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.20/0.48  thf('8', plain,
% 0.20/0.48      (((k4_xboole_0 @ sk_A @ k1_xboole_0) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.48      inference('sup+', [status(thm)], ['6', '7'])).
% 0.20/0.48  thf(t3_boole, axiom,
% 0.20/0.48    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.20/0.48  thf('9', plain, (![X13 : $i]: ((k4_xboole_0 @ X13 @ k1_xboole_0) = (X13))),
% 0.20/0.48      inference('cnf', [status(esa)], [t3_boole])).
% 0.20/0.48  thf('10', plain, (((sk_A) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.48      inference('demod', [status(thm)], ['8', '9'])).
% 0.20/0.48  thf(d4_xboole_0, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( ( C ) = ( k3_xboole_0 @ A @ B ) ) <=>
% 0.20/0.48       ( ![D:$i]:
% 0.20/0.48         ( ( r2_hidden @ D @ C ) <=>
% 0.20/0.48           ( ( r2_hidden @ D @ A ) & ( r2_hidden @ D @ B ) ) ) ) ))).
% 0.20/0.48  thf('11', plain,
% 0.20/0.48      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.48         (~ (r2_hidden @ X4 @ X3)
% 0.20/0.48          | (r2_hidden @ X4 @ X2)
% 0.20/0.48          | ((X3) != (k3_xboole_0 @ X1 @ X2)))),
% 0.20/0.48      inference('cnf', [status(esa)], [d4_xboole_0])).
% 0.20/0.48  thf('12', plain,
% 0.20/0.48      (![X1 : $i, X2 : $i, X4 : $i]:
% 0.20/0.48         ((r2_hidden @ X4 @ X2) | ~ (r2_hidden @ X4 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.20/0.48      inference('simplify', [status(thm)], ['11'])).
% 0.20/0.48  thf('13', plain,
% 0.20/0.48      (![X0 : $i]: (~ (r2_hidden @ X0 @ sk_A) | (r2_hidden @ X0 @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['10', '12'])).
% 0.20/0.48  thf('14', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         ((r1_xboole_0 @ sk_A @ X0) | (r2_hidden @ (sk_C @ X0 @ sk_A) @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['3', '13'])).
% 0.20/0.48  thf('15', plain,
% 0.20/0.48      (![X6 : $i, X8 : $i, X9 : $i]:
% 0.20/0.48         (~ (r2_hidden @ X8 @ X6)
% 0.20/0.48          | ~ (r2_hidden @ X8 @ X9)
% 0.20/0.48          | ~ (r1_xboole_0 @ X6 @ X9))),
% 0.20/0.48      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.20/0.48  thf('16', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         ((r1_xboole_0 @ sk_A @ X0)
% 0.20/0.48          | ~ (r1_xboole_0 @ sk_B @ X1)
% 0.20/0.48          | ~ (r2_hidden @ (sk_C @ X0 @ sk_A) @ X1))),
% 0.20/0.48      inference('sup-', [status(thm)], ['14', '15'])).
% 0.20/0.48  thf('17', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         ((r1_xboole_0 @ sk_A @ X0)
% 0.20/0.48          | ~ (r1_xboole_0 @ sk_B @ X0)
% 0.20/0.48          | (r1_xboole_0 @ sk_A @ X0))),
% 0.20/0.48      inference('sup-', [status(thm)], ['2', '16'])).
% 0.20/0.48  thf('18', plain,
% 0.20/0.48      (![X0 : $i]: (~ (r1_xboole_0 @ sk_B @ X0) | (r1_xboole_0 @ sk_A @ X0))),
% 0.20/0.48      inference('simplify', [status(thm)], ['17'])).
% 0.20/0.48  thf('19', plain, ((r1_xboole_0 @ sk_A @ sk_C_1)),
% 0.20/0.48      inference('sup-', [status(thm)], ['1', '18'])).
% 0.20/0.48  thf('20', plain, ($false), inference('demod', [status(thm)], ['0', '19'])).
% 0.20/0.48  
% 0.20/0.48  % SZS output end Refutation
% 0.20/0.48  
% 0.20/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
