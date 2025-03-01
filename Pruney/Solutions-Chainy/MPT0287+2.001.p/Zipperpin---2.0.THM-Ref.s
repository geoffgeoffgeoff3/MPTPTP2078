%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.baaKZHa2Ne

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:34:51 EST 2020

% Result     : Theorem 0.25s
% Output     : Refutation 0.25s
% Verified   : 
% Statistics : Number of formulae       :   30 (  36 expanded)
%              Number of leaves         :   10 (  15 expanded)
%              Depth                    :   10
%              Number of atoms          :  218 ( 278 expanded)
%              Number of equality atoms :    3 (   4 expanded)
%              Maximal formula depth    :   11 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(t94_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r1_tarski @ C @ B ) )
     => ( r1_tarski @ ( k3_tarski @ A ) @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ! [C: $i] :
            ( ( r2_hidden @ C @ A )
           => ( r1_tarski @ C @ B ) )
       => ( r1_tarski @ ( k3_tarski @ A ) @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t94_zfmisc_1])).

thf('0',plain,(
    ~ ( r1_tarski @ ( k3_tarski @ sk_A ) @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('1',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf(d4_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k3_tarski @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( ( r2_hidden @ D @ A )
              & ( r2_hidden @ C @ D ) ) ) ) )).

thf('2',plain,(
    ! [X5: $i,X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X8 @ X7 )
      | ( r2_hidden @ X8 @ ( sk_D_1 @ X8 @ X5 ) )
      | ( X7
       != ( k3_tarski @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[d4_tarski])).

thf('3',plain,(
    ! [X5: $i,X8: $i] :
      ( ( r2_hidden @ X8 @ ( sk_D_1 @ X8 @ X5 ) )
      | ~ ( r2_hidden @ X8 @ ( k3_tarski @ X5 ) ) ) ),
    inference(simplify,[status(thm)],['2'])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k3_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ ( sk_C @ X1 @ ( k3_tarski @ X0 ) ) @ ( sk_D_1 @ ( sk_C @ X1 @ ( k3_tarski @ X0 ) ) @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['1','3'])).

thf('5',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('6',plain,(
    ! [X5: $i,X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X8 @ X7 )
      | ( r2_hidden @ ( sk_D_1 @ X8 @ X5 ) @ X5 )
      | ( X7
       != ( k3_tarski @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[d4_tarski])).

thf('7',plain,(
    ! [X5: $i,X8: $i] :
      ( ( r2_hidden @ ( sk_D_1 @ X8 @ X5 ) @ X5 )
      | ~ ( r2_hidden @ X8 @ ( k3_tarski @ X5 ) ) ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k3_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ ( sk_D_1 @ ( sk_C @ X1 @ ( k3_tarski @ X0 ) ) @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','7'])).

thf('9',plain,(
    ! [X11: $i] :
      ( ( r1_tarski @ X11 @ sk_B )
      | ~ ( r2_hidden @ X11 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k3_tarski @ sk_A ) @ X0 )
      | ( r1_tarski @ ( sk_D_1 @ ( sk_C @ X0 @ ( k3_tarski @ sk_A ) ) @ sk_A ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k3_tarski @ sk_A ) @ X0 )
      | ( r2_hidden @ X1 @ sk_B )
      | ~ ( r2_hidden @ X1 @ ( sk_D_1 @ ( sk_C @ X0 @ ( k3_tarski @ sk_A ) ) @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k3_tarski @ sk_A ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ ( k3_tarski @ sk_A ) ) @ sk_B )
      | ( r1_tarski @ ( k3_tarski @ sk_A ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C @ X0 @ ( k3_tarski @ sk_A ) ) @ sk_B )
      | ( r1_tarski @ ( k3_tarski @ sk_A ) @ X0 ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ~ ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('16',plain,
    ( ( r1_tarski @ ( k3_tarski @ sk_A ) @ sk_B )
    | ( r1_tarski @ ( k3_tarski @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    r1_tarski @ ( k3_tarski @ sk_A ) @ sk_B ),
    inference(simplify,[status(thm)],['16'])).

thf('18',plain,(
    $false ),
    inference(demod,[status(thm)],['0','17'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.15  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.baaKZHa2Ne
% 0.14/0.38  % Computer   : n014.cluster.edu
% 0.14/0.38  % Model      : x86_64 x86_64
% 0.14/0.38  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.38  % Memory     : 8042.1875MB
% 0.14/0.38  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.38  % CPULimit   : 60
% 0.14/0.38  % DateTime   : Tue Dec  1 14:52:22 EST 2020
% 0.14/0.38  % CPUTime    : 
% 0.14/0.38  % Running portfolio for 600 s
% 0.14/0.38  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.38  % Number of cores: 8
% 0.14/0.38  % Python version: Python 3.6.8
% 0.14/0.38  % Running in FO mode
% 0.25/0.52  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.25/0.52  % Solved by: fo/fo7.sh
% 0.25/0.52  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.25/0.52  % done 39 iterations in 0.037s
% 0.25/0.52  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.25/0.52  % SZS output start Refutation
% 0.25/0.52  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.25/0.52  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.25/0.52  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.25/0.52  thf(sk_B_type, type, sk_B: $i).
% 0.25/0.52  thf(sk_D_1_type, type, sk_D_1: $i > $i > $i).
% 0.25/0.52  thf(sk_A_type, type, sk_A: $i).
% 0.25/0.52  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.25/0.52  thf(t94_zfmisc_1, conjecture,
% 0.25/0.52    (![A:$i,B:$i]:
% 0.25/0.52     ( ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r1_tarski @ C @ B ) ) ) =>
% 0.25/0.52       ( r1_tarski @ ( k3_tarski @ A ) @ B ) ))).
% 0.25/0.52  thf(zf_stmt_0, negated_conjecture,
% 0.25/0.52    (~( ![A:$i,B:$i]:
% 0.25/0.52        ( ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r1_tarski @ C @ B ) ) ) =>
% 0.25/0.52          ( r1_tarski @ ( k3_tarski @ A ) @ B ) ) )),
% 0.25/0.52    inference('cnf.neg', [status(esa)], [t94_zfmisc_1])).
% 0.25/0.52  thf('0', plain, (~ (r1_tarski @ (k3_tarski @ sk_A) @ sk_B)),
% 0.25/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.25/0.52  thf(d3_tarski, axiom,
% 0.25/0.52    (![A:$i,B:$i]:
% 0.25/0.52     ( ( r1_tarski @ A @ B ) <=>
% 0.25/0.52       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.25/0.52  thf('1', plain,
% 0.25/0.52      (![X1 : $i, X3 : $i]:
% 0.25/0.52         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.25/0.52      inference('cnf', [status(esa)], [d3_tarski])).
% 0.25/0.52  thf(d4_tarski, axiom,
% 0.25/0.52    (![A:$i,B:$i]:
% 0.25/0.52     ( ( ( B ) = ( k3_tarski @ A ) ) <=>
% 0.25/0.52       ( ![C:$i]:
% 0.25/0.52         ( ( r2_hidden @ C @ B ) <=>
% 0.25/0.52           ( ?[D:$i]: ( ( r2_hidden @ D @ A ) & ( r2_hidden @ C @ D ) ) ) ) ) ))).
% 0.25/0.52  thf('2', plain,
% 0.25/0.52      (![X5 : $i, X7 : $i, X8 : $i]:
% 0.25/0.52         (~ (r2_hidden @ X8 @ X7)
% 0.25/0.52          | (r2_hidden @ X8 @ (sk_D_1 @ X8 @ X5))
% 0.25/0.52          | ((X7) != (k3_tarski @ X5)))),
% 0.25/0.52      inference('cnf', [status(esa)], [d4_tarski])).
% 0.25/0.52  thf('3', plain,
% 0.25/0.52      (![X5 : $i, X8 : $i]:
% 0.25/0.52         ((r2_hidden @ X8 @ (sk_D_1 @ X8 @ X5))
% 0.25/0.52          | ~ (r2_hidden @ X8 @ (k3_tarski @ X5)))),
% 0.25/0.52      inference('simplify', [status(thm)], ['2'])).
% 0.25/0.52  thf('4', plain,
% 0.25/0.52      (![X0 : $i, X1 : $i]:
% 0.25/0.52         ((r1_tarski @ (k3_tarski @ X0) @ X1)
% 0.25/0.52          | (r2_hidden @ (sk_C @ X1 @ (k3_tarski @ X0)) @ 
% 0.25/0.52             (sk_D_1 @ (sk_C @ X1 @ (k3_tarski @ X0)) @ X0)))),
% 0.25/0.52      inference('sup-', [status(thm)], ['1', '3'])).
% 0.25/0.52  thf('5', plain,
% 0.25/0.52      (![X1 : $i, X3 : $i]:
% 0.25/0.52         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.25/0.52      inference('cnf', [status(esa)], [d3_tarski])).
% 0.25/0.52  thf('6', plain,
% 0.25/0.52      (![X5 : $i, X7 : $i, X8 : $i]:
% 0.25/0.52         (~ (r2_hidden @ X8 @ X7)
% 0.25/0.52          | (r2_hidden @ (sk_D_1 @ X8 @ X5) @ X5)
% 0.25/0.52          | ((X7) != (k3_tarski @ X5)))),
% 0.25/0.52      inference('cnf', [status(esa)], [d4_tarski])).
% 0.25/0.52  thf('7', plain,
% 0.25/0.52      (![X5 : $i, X8 : $i]:
% 0.25/0.52         ((r2_hidden @ (sk_D_1 @ X8 @ X5) @ X5)
% 0.25/0.52          | ~ (r2_hidden @ X8 @ (k3_tarski @ X5)))),
% 0.25/0.52      inference('simplify', [status(thm)], ['6'])).
% 0.25/0.52  thf('8', plain,
% 0.25/0.52      (![X0 : $i, X1 : $i]:
% 0.25/0.52         ((r1_tarski @ (k3_tarski @ X0) @ X1)
% 0.25/0.52          | (r2_hidden @ (sk_D_1 @ (sk_C @ X1 @ (k3_tarski @ X0)) @ X0) @ X0))),
% 0.25/0.52      inference('sup-', [status(thm)], ['5', '7'])).
% 0.25/0.52  thf('9', plain,
% 0.25/0.52      (![X11 : $i]: ((r1_tarski @ X11 @ sk_B) | ~ (r2_hidden @ X11 @ sk_A))),
% 0.25/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.25/0.52  thf('10', plain,
% 0.25/0.52      (![X0 : $i]:
% 0.25/0.52         ((r1_tarski @ (k3_tarski @ sk_A) @ X0)
% 0.25/0.52          | (r1_tarski @ (sk_D_1 @ (sk_C @ X0 @ (k3_tarski @ sk_A)) @ sk_A) @ 
% 0.25/0.52             sk_B))),
% 0.25/0.52      inference('sup-', [status(thm)], ['8', '9'])).
% 0.25/0.52  thf('11', plain,
% 0.25/0.52      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.25/0.52         (~ (r2_hidden @ X0 @ X1)
% 0.25/0.52          | (r2_hidden @ X0 @ X2)
% 0.25/0.52          | ~ (r1_tarski @ X1 @ X2))),
% 0.25/0.52      inference('cnf', [status(esa)], [d3_tarski])).
% 0.25/0.52  thf('12', plain,
% 0.25/0.52      (![X0 : $i, X1 : $i]:
% 0.25/0.52         ((r1_tarski @ (k3_tarski @ sk_A) @ X0)
% 0.25/0.52          | (r2_hidden @ X1 @ sk_B)
% 0.25/0.52          | ~ (r2_hidden @ X1 @ 
% 0.25/0.52               (sk_D_1 @ (sk_C @ X0 @ (k3_tarski @ sk_A)) @ sk_A)))),
% 0.25/0.52      inference('sup-', [status(thm)], ['10', '11'])).
% 0.25/0.52  thf('13', plain,
% 0.25/0.52      (![X0 : $i]:
% 0.25/0.52         ((r1_tarski @ (k3_tarski @ sk_A) @ X0)
% 0.25/0.52          | (r2_hidden @ (sk_C @ X0 @ (k3_tarski @ sk_A)) @ sk_B)
% 0.25/0.52          | (r1_tarski @ (k3_tarski @ sk_A) @ X0))),
% 0.25/0.52      inference('sup-', [status(thm)], ['4', '12'])).
% 0.25/0.52  thf('14', plain,
% 0.25/0.52      (![X0 : $i]:
% 0.25/0.52         ((r2_hidden @ (sk_C @ X0 @ (k3_tarski @ sk_A)) @ sk_B)
% 0.25/0.52          | (r1_tarski @ (k3_tarski @ sk_A) @ X0))),
% 0.25/0.52      inference('simplify', [status(thm)], ['13'])).
% 0.25/0.52  thf('15', plain,
% 0.25/0.52      (![X1 : $i, X3 : $i]:
% 0.25/0.52         ((r1_tarski @ X1 @ X3) | ~ (r2_hidden @ (sk_C @ X3 @ X1) @ X3))),
% 0.25/0.52      inference('cnf', [status(esa)], [d3_tarski])).
% 0.25/0.52  thf('16', plain,
% 0.25/0.52      (((r1_tarski @ (k3_tarski @ sk_A) @ sk_B)
% 0.25/0.52        | (r1_tarski @ (k3_tarski @ sk_A) @ sk_B))),
% 0.25/0.52      inference('sup-', [status(thm)], ['14', '15'])).
% 0.25/0.52  thf('17', plain, ((r1_tarski @ (k3_tarski @ sk_A) @ sk_B)),
% 0.25/0.52      inference('simplify', [status(thm)], ['16'])).
% 0.25/0.52  thf('18', plain, ($false), inference('demod', [status(thm)], ['0', '17'])).
% 0.25/0.52  
% 0.25/0.52  % SZS output end Refutation
% 0.25/0.52  
% 0.25/0.53  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
