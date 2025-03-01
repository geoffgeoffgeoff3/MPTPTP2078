%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.KBIpVs4cxw

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:36:10 EST 2020

% Result     : Theorem 1.06s
% Output     : Refutation 1.06s
% Verified   : 
% Statistics : Number of formulae       :   29 (  32 expanded)
%              Number of leaves         :   13 (  15 expanded)
%              Depth                    :    8
%              Number of atoms          :  221 ( 264 expanded)
%              Number of equality atoms :   21 (  26 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(l27_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ) )).

thf('0',plain,(
    ! [X37: $i,X38: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X37 ) @ X38 )
      | ( r2_hidden @ X37 @ X38 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf(t87_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( ( k2_xboole_0 @ ( k4_xboole_0 @ C @ A ) @ B )
        = ( k4_xboole_0 @ ( k2_xboole_0 @ C @ B ) @ A ) ) ) )).

thf('1',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( r1_xboole_0 @ X17 @ X18 )
      | ( ( k2_xboole_0 @ ( k4_xboole_0 @ X19 @ X17 ) @ X18 )
        = ( k4_xboole_0 @ ( k2_xboole_0 @ X19 @ X18 ) @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t87_xboole_1])).

thf('2',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( ( k2_xboole_0 @ ( k4_xboole_0 @ X2 @ ( k1_tarski @ X1 ) ) @ X0 )
        = ( k4_xboole_0 @ ( k2_xboole_0 @ X2 @ X0 ) @ ( k1_tarski @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t147_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( A != B )
     => ( ( k4_xboole_0 @ ( k2_xboole_0 @ C @ ( k1_tarski @ A ) ) @ ( k1_tarski @ B ) )
        = ( k2_xboole_0 @ ( k4_xboole_0 @ C @ ( k1_tarski @ B ) ) @ ( k1_tarski @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( A != B )
       => ( ( k4_xboole_0 @ ( k2_xboole_0 @ C @ ( k1_tarski @ A ) ) @ ( k1_tarski @ B ) )
          = ( k2_xboole_0 @ ( k4_xboole_0 @ C @ ( k1_tarski @ B ) ) @ ( k1_tarski @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t147_zfmisc_1])).

thf('3',plain,(
    ( k4_xboole_0 @ ( k2_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_B ) )
 != ( k2_xboole_0 @ ( k4_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_B ) ) @ ( k1_tarski @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k2_xboole_0 @ B @ A ) ) )).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf('5',plain,(
    ( k4_xboole_0 @ ( k2_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_B ) )
 != ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k4_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['3','4'])).

thf('6',plain,
    ( ( ( k2_xboole_0 @ ( k4_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_B ) ) @ ( k1_tarski @ sk_A ) )
     != ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k4_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_B ) ) ) )
    | ( r2_hidden @ sk_B @ ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['2','5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf('8',plain,
    ( ( ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k4_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_B ) ) )
     != ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k4_xboole_0 @ sk_C_1 @ ( k1_tarski @ sk_B ) ) ) )
    | ( r2_hidden @ sk_B @ ( k1_tarski @ sk_A ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,(
    r2_hidden @ sk_B @ ( k1_tarski @ sk_A ) ),
    inference(simplify,[status(thm)],['8'])).

thf(d1_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_tarski @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( C = A ) ) ) )).

thf('10',plain,(
    ! [X22: $i,X24: $i,X25: $i] :
      ( ~ ( r2_hidden @ X25 @ X24 )
      | ( X25 = X22 )
      | ( X24
       != ( k1_tarski @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[d1_tarski])).

thf('11',plain,(
    ! [X22: $i,X25: $i] :
      ( ( X25 = X22 )
      | ~ ( r2_hidden @ X25 @ ( k1_tarski @ X22 ) ) ) ),
    inference(simplify,[status(thm)],['10'])).

thf('12',plain,(
    sk_B = sk_A ),
    inference('sup-',[status(thm)],['9','11'])).

thf('13',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['12','13'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.KBIpVs4cxw
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:20:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 1.06/1.25  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 1.06/1.25  % Solved by: fo/fo7.sh
% 1.06/1.25  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.06/1.25  % done 1684 iterations in 0.795s
% 1.06/1.25  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 1.06/1.25  % SZS output start Refutation
% 1.06/1.25  thf(sk_B_type, type, sk_B: $i).
% 1.06/1.25  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 1.06/1.25  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 1.06/1.25  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 1.06/1.25  thf(sk_C_1_type, type, sk_C_1: $i).
% 1.06/1.25  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 1.06/1.25  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 1.06/1.25  thf(sk_A_type, type, sk_A: $i).
% 1.06/1.25  thf(l27_zfmisc_1, axiom,
% 1.06/1.25    (![A:$i,B:$i]:
% 1.06/1.25     ( ( ~( r2_hidden @ A @ B ) ) => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ))).
% 1.06/1.25  thf('0', plain,
% 1.06/1.25      (![X37 : $i, X38 : $i]:
% 1.06/1.25         ((r1_xboole_0 @ (k1_tarski @ X37) @ X38) | (r2_hidden @ X37 @ X38))),
% 1.06/1.25      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 1.06/1.25  thf(t87_xboole_1, axiom,
% 1.06/1.25    (![A:$i,B:$i,C:$i]:
% 1.06/1.25     ( ( r1_xboole_0 @ A @ B ) =>
% 1.06/1.25       ( ( k2_xboole_0 @ ( k4_xboole_0 @ C @ A ) @ B ) =
% 1.06/1.25         ( k4_xboole_0 @ ( k2_xboole_0 @ C @ B ) @ A ) ) ))).
% 1.06/1.25  thf('1', plain,
% 1.06/1.25      (![X17 : $i, X18 : $i, X19 : $i]:
% 1.06/1.25         (~ (r1_xboole_0 @ X17 @ X18)
% 1.06/1.25          | ((k2_xboole_0 @ (k4_xboole_0 @ X19 @ X17) @ X18)
% 1.06/1.25              = (k4_xboole_0 @ (k2_xboole_0 @ X19 @ X18) @ X17)))),
% 1.06/1.25      inference('cnf', [status(esa)], [t87_xboole_1])).
% 1.06/1.25  thf('2', plain,
% 1.06/1.25      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.06/1.25         ((r2_hidden @ X1 @ X0)
% 1.06/1.25          | ((k2_xboole_0 @ (k4_xboole_0 @ X2 @ (k1_tarski @ X1)) @ X0)
% 1.06/1.25              = (k4_xboole_0 @ (k2_xboole_0 @ X2 @ X0) @ (k1_tarski @ X1))))),
% 1.06/1.25      inference('sup-', [status(thm)], ['0', '1'])).
% 1.06/1.25  thf(t147_zfmisc_1, conjecture,
% 1.06/1.25    (![A:$i,B:$i,C:$i]:
% 1.06/1.25     ( ( ( A ) != ( B ) ) =>
% 1.06/1.25       ( ( k4_xboole_0 @
% 1.06/1.25           ( k2_xboole_0 @ C @ ( k1_tarski @ A ) ) @ ( k1_tarski @ B ) ) =
% 1.06/1.25         ( k2_xboole_0 @
% 1.06/1.25           ( k4_xboole_0 @ C @ ( k1_tarski @ B ) ) @ ( k1_tarski @ A ) ) ) ))).
% 1.06/1.25  thf(zf_stmt_0, negated_conjecture,
% 1.06/1.25    (~( ![A:$i,B:$i,C:$i]:
% 1.06/1.25        ( ( ( A ) != ( B ) ) =>
% 1.06/1.25          ( ( k4_xboole_0 @
% 1.06/1.25              ( k2_xboole_0 @ C @ ( k1_tarski @ A ) ) @ ( k1_tarski @ B ) ) =
% 1.06/1.25            ( k2_xboole_0 @
% 1.06/1.25              ( k4_xboole_0 @ C @ ( k1_tarski @ B ) ) @ ( k1_tarski @ A ) ) ) ) )),
% 1.06/1.25    inference('cnf.neg', [status(esa)], [t147_zfmisc_1])).
% 1.06/1.25  thf('3', plain,
% 1.06/1.25      (((k4_xboole_0 @ (k2_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_A)) @ 
% 1.06/1.25         (k1_tarski @ sk_B))
% 1.06/1.25         != (k2_xboole_0 @ (k4_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_B)) @ 
% 1.06/1.25             (k1_tarski @ sk_A)))),
% 1.06/1.25      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.06/1.25  thf(commutativity_k2_xboole_0, axiom,
% 1.06/1.25    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ B ) = ( k2_xboole_0 @ B @ A ) ))).
% 1.06/1.25  thf('4', plain,
% 1.06/1.25      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 1.06/1.25      inference('cnf', [status(esa)], [commutativity_k2_xboole_0])).
% 1.06/1.25  thf('5', plain,
% 1.06/1.25      (((k4_xboole_0 @ (k2_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_A)) @ 
% 1.06/1.25         (k1_tarski @ sk_B))
% 1.06/1.25         != (k2_xboole_0 @ (k1_tarski @ sk_A) @ 
% 1.06/1.25             (k4_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_B))))),
% 1.06/1.25      inference('demod', [status(thm)], ['3', '4'])).
% 1.06/1.25  thf('6', plain,
% 1.06/1.25      ((((k2_xboole_0 @ (k4_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_B)) @ 
% 1.06/1.25          (k1_tarski @ sk_A))
% 1.06/1.25          != (k2_xboole_0 @ (k1_tarski @ sk_A) @ 
% 1.06/1.25              (k4_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_B))))
% 1.06/1.25        | (r2_hidden @ sk_B @ (k1_tarski @ sk_A)))),
% 1.06/1.25      inference('sup-', [status(thm)], ['2', '5'])).
% 1.06/1.25  thf('7', plain,
% 1.06/1.25      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 1.06/1.25      inference('cnf', [status(esa)], [commutativity_k2_xboole_0])).
% 1.06/1.25  thf('8', plain,
% 1.06/1.25      ((((k2_xboole_0 @ (k1_tarski @ sk_A) @ 
% 1.06/1.25          (k4_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_B)))
% 1.06/1.25          != (k2_xboole_0 @ (k1_tarski @ sk_A) @ 
% 1.06/1.25              (k4_xboole_0 @ sk_C_1 @ (k1_tarski @ sk_B))))
% 1.06/1.25        | (r2_hidden @ sk_B @ (k1_tarski @ sk_A)))),
% 1.06/1.25      inference('demod', [status(thm)], ['6', '7'])).
% 1.06/1.25  thf('9', plain, ((r2_hidden @ sk_B @ (k1_tarski @ sk_A))),
% 1.06/1.25      inference('simplify', [status(thm)], ['8'])).
% 1.06/1.25  thf(d1_tarski, axiom,
% 1.06/1.25    (![A:$i,B:$i]:
% 1.06/1.25     ( ( ( B ) = ( k1_tarski @ A ) ) <=>
% 1.06/1.25       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( ( C ) = ( A ) ) ) ) ))).
% 1.06/1.25  thf('10', plain,
% 1.06/1.25      (![X22 : $i, X24 : $i, X25 : $i]:
% 1.06/1.25         (~ (r2_hidden @ X25 @ X24)
% 1.06/1.25          | ((X25) = (X22))
% 1.06/1.25          | ((X24) != (k1_tarski @ X22)))),
% 1.06/1.25      inference('cnf', [status(esa)], [d1_tarski])).
% 1.06/1.25  thf('11', plain,
% 1.06/1.25      (![X22 : $i, X25 : $i]:
% 1.06/1.25         (((X25) = (X22)) | ~ (r2_hidden @ X25 @ (k1_tarski @ X22)))),
% 1.06/1.25      inference('simplify', [status(thm)], ['10'])).
% 1.06/1.25  thf('12', plain, (((sk_B) = (sk_A))),
% 1.06/1.25      inference('sup-', [status(thm)], ['9', '11'])).
% 1.06/1.25  thf('13', plain, (((sk_A) != (sk_B))),
% 1.06/1.25      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.06/1.25  thf('14', plain, ($false),
% 1.06/1.25      inference('simplify_reflect-', [status(thm)], ['12', '13'])).
% 1.06/1.25  
% 1.06/1.25  % SZS output end Refutation
% 1.06/1.25  
% 1.06/1.26  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
