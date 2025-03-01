%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.rLFtGkSLYg

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:42:58 EST 2020

% Result     : Theorem 0.85s
% Output     : Refutation 0.85s
% Verified   : 
% Statistics : Number of formulae       :   45 (  53 expanded)
%              Number of leaves         :   22 (  26 expanded)
%              Depth                    :    6
%              Number of atoms          :  200 ( 251 expanded)
%              Number of equality atoms :   10 (  12 expanded)
%              Maximal formula depth    :   13 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t8_boole,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( v1_xboole_0 @ A )
        & ( A != B )
        & ( v1_xboole_0 @ B ) ) )).

thf('0',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( v1_xboole_0 @ X9 )
      | ~ ( v1_xboole_0 @ X10 )
      | ( X9 = X10 ) ) ),
    inference(cnf,[status(esa)],[t8_boole])).

thf(t172_relat_1,conjecture,(
    ! [A: $i] :
      ( ( k10_relat_1 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( k10_relat_1 @ k1_xboole_0 @ A )
        = k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t172_relat_1])).

thf('1',plain,(
    ( k10_relat_1 @ k1_xboole_0 @ sk_A )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    ! [X0: $i] :
      ( ( X0 != k1_xboole_0 )
      | ~ ( v1_xboole_0 @ ( k10_relat_1 @ k1_xboole_0 @ sk_A ) )
      | ~ ( v1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,
    ( ~ ( v1_xboole_0 @ k1_xboole_0 )
    | ~ ( v1_xboole_0 @ ( k10_relat_1 @ k1_xboole_0 @ sk_A ) ) ),
    inference(simplify,[status(thm)],['2'])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('4',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('5',plain,(
    ! [X7: $i] :
      ( ( k3_xboole_0 @ X7 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('6',plain,(
    ! [X3: $i,X5: $i,X6: $i] :
      ( ~ ( r2_hidden @ X5 @ ( k3_xboole_0 @ X3 @ X6 ) )
      | ~ ( r1_xboole_0 @ X3 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('8',plain,(
    ! [X8: $i] :
      ( r1_xboole_0 @ X8 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf('9',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('10',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['4','9'])).

thf('11',plain,(
    ~ ( v1_xboole_0 @ ( k10_relat_1 @ k1_xboole_0 @ sk_A ) ) ),
    inference('simplify_reflect+',[status(thm)],['3','10'])).

thf('12',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(t166_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ A @ ( k10_relat_1 @ C @ B ) )
      <=> ? [D: $i] :
            ( ( r2_hidden @ D @ B )
            & ( r2_hidden @ ( k4_tarski @ A @ D ) @ C )
            & ( r2_hidden @ D @ ( k2_relat_1 @ C ) ) ) ) ) )).

thf('13',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X14 @ ( k10_relat_1 @ X15 @ X13 ) )
      | ( r2_hidden @ ( k4_tarski @ X14 @ ( sk_D @ X15 @ X13 @ X14 ) ) @ X15 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t166_relat_1])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ ( k10_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_B @ ( k10_relat_1 @ X1 @ X0 ) ) @ ( sk_D @ X1 @ X0 @ ( sk_B @ ( k10_relat_1 @ X1 @ X0 ) ) ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ k1_xboole_0 )
      | ( v1_xboole_0 @ ( k10_relat_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf(t81_relat_1,axiom,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 )).

thf('17',plain,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t81_relat_1])).

thf(dt_k6_relat_1,axiom,(
    ! [A: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ A ) ) )).

thf('18',plain,(
    ! [X11: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[dt_k6_relat_1])).

thf('19',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( v1_xboole_0 @ ( k10_relat_1 @ k1_xboole_0 @ X0 ) ) ),
    inference(demod,[status(thm)],['16','19'])).

thf('21',plain,(
    $false ),
    inference(demod,[status(thm)],['11','20'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.rLFtGkSLYg
% 0.13/0.33  % Computer   : n010.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % DateTime   : Tue Dec  1 19:22:59 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running portfolio for 600 s
% 0.13/0.33  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.33  % Number of cores: 8
% 0.13/0.33  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.85/1.02  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.85/1.02  % Solved by: fo/fo7.sh
% 0.85/1.02  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.85/1.02  % done 1115 iterations in 0.580s
% 0.85/1.02  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.85/1.02  % SZS output start Refutation
% 0.85/1.02  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.85/1.02  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.85/1.02  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.85/1.02  thf(sk_A_type, type, sk_A: $i).
% 0.85/1.02  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.85/1.02  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.85/1.02  thf(sk_B_type, type, sk_B: $i > $i).
% 0.85/1.02  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.85/1.02  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.85/1.02  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.85/1.02  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.85/1.02  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.85/1.02  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.85/1.02  thf(t8_boole, axiom,
% 0.85/1.02    (![A:$i,B:$i]:
% 0.85/1.02     ( ~( ( v1_xboole_0 @ A ) & ( ( A ) != ( B ) ) & ( v1_xboole_0 @ B ) ) ))).
% 0.85/1.02  thf('0', plain,
% 0.85/1.02      (![X9 : $i, X10 : $i]:
% 0.85/1.02         (~ (v1_xboole_0 @ X9) | ~ (v1_xboole_0 @ X10) | ((X9) = (X10)))),
% 0.85/1.02      inference('cnf', [status(esa)], [t8_boole])).
% 0.85/1.02  thf(t172_relat_1, conjecture,
% 0.85/1.02    (![A:$i]: ( ( k10_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 0.85/1.02  thf(zf_stmt_0, negated_conjecture,
% 0.85/1.02    (~( ![A:$i]: ( ( k10_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) )),
% 0.85/1.02    inference('cnf.neg', [status(esa)], [t172_relat_1])).
% 0.85/1.02  thf('1', plain, (((k10_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0))),
% 0.85/1.02      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.85/1.02  thf('2', plain,
% 0.85/1.02      (![X0 : $i]:
% 0.85/1.02         (((X0) != (k1_xboole_0))
% 0.85/1.02          | ~ (v1_xboole_0 @ (k10_relat_1 @ k1_xboole_0 @ sk_A))
% 0.85/1.02          | ~ (v1_xboole_0 @ X0))),
% 0.85/1.02      inference('sup-', [status(thm)], ['0', '1'])).
% 0.85/1.02  thf('3', plain,
% 0.85/1.02      ((~ (v1_xboole_0 @ k1_xboole_0)
% 0.85/1.02        | ~ (v1_xboole_0 @ (k10_relat_1 @ k1_xboole_0 @ sk_A)))),
% 0.85/1.02      inference('simplify', [status(thm)], ['2'])).
% 0.85/1.02  thf(d1_xboole_0, axiom,
% 0.85/1.02    (![A:$i]:
% 0.85/1.02     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.85/1.02  thf('4', plain,
% 0.85/1.02      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.85/1.02      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.85/1.02  thf(t2_boole, axiom,
% 0.85/1.02    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.85/1.02  thf('5', plain,
% 0.85/1.02      (![X7 : $i]: ((k3_xboole_0 @ X7 @ k1_xboole_0) = (k1_xboole_0))),
% 0.85/1.02      inference('cnf', [status(esa)], [t2_boole])).
% 0.85/1.02  thf(t4_xboole_0, axiom,
% 0.85/1.02    (![A:$i,B:$i]:
% 0.85/1.02     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.85/1.02            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.85/1.02       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.85/1.02            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.85/1.02  thf('6', plain,
% 0.85/1.02      (![X3 : $i, X5 : $i, X6 : $i]:
% 0.85/1.02         (~ (r2_hidden @ X5 @ (k3_xboole_0 @ X3 @ X6))
% 0.85/1.02          | ~ (r1_xboole_0 @ X3 @ X6))),
% 0.85/1.02      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.85/1.02  thf('7', plain,
% 0.85/1.02      (![X0 : $i, X1 : $i]:
% 0.85/1.02         (~ (r2_hidden @ X1 @ k1_xboole_0) | ~ (r1_xboole_0 @ X0 @ k1_xboole_0))),
% 0.85/1.02      inference('sup-', [status(thm)], ['5', '6'])).
% 0.85/1.02  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.85/1.02  thf('8', plain, (![X8 : $i]: (r1_xboole_0 @ X8 @ k1_xboole_0)),
% 0.85/1.02      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.85/1.02  thf('9', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.85/1.02      inference('demod', [status(thm)], ['7', '8'])).
% 0.85/1.02  thf('10', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.85/1.02      inference('sup-', [status(thm)], ['4', '9'])).
% 0.85/1.02  thf('11', plain, (~ (v1_xboole_0 @ (k10_relat_1 @ k1_xboole_0 @ sk_A))),
% 0.85/1.02      inference('simplify_reflect+', [status(thm)], ['3', '10'])).
% 0.85/1.02  thf('12', plain,
% 0.85/1.02      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.85/1.02      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.85/1.02  thf(t166_relat_1, axiom,
% 0.85/1.02    (![A:$i,B:$i,C:$i]:
% 0.85/1.02     ( ( v1_relat_1 @ C ) =>
% 0.85/1.02       ( ( r2_hidden @ A @ ( k10_relat_1 @ C @ B ) ) <=>
% 0.85/1.02         ( ?[D:$i]:
% 0.85/1.02           ( ( r2_hidden @ D @ B ) & 
% 0.85/1.02             ( r2_hidden @ ( k4_tarski @ A @ D ) @ C ) & 
% 0.85/1.02             ( r2_hidden @ D @ ( k2_relat_1 @ C ) ) ) ) ) ))).
% 0.85/1.02  thf('13', plain,
% 0.85/1.02      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.85/1.02         (~ (r2_hidden @ X14 @ (k10_relat_1 @ X15 @ X13))
% 0.85/1.02          | (r2_hidden @ (k4_tarski @ X14 @ (sk_D @ X15 @ X13 @ X14)) @ X15)
% 0.85/1.02          | ~ (v1_relat_1 @ X15))),
% 0.85/1.02      inference('cnf', [status(esa)], [t166_relat_1])).
% 0.85/1.02  thf('14', plain,
% 0.85/1.02      (![X0 : $i, X1 : $i]:
% 0.85/1.02         ((v1_xboole_0 @ (k10_relat_1 @ X1 @ X0))
% 0.85/1.02          | ~ (v1_relat_1 @ X1)
% 0.85/1.02          | (r2_hidden @ 
% 0.85/1.02             (k4_tarski @ (sk_B @ (k10_relat_1 @ X1 @ X0)) @ 
% 0.85/1.02              (sk_D @ X1 @ X0 @ (sk_B @ (k10_relat_1 @ X1 @ X0)))) @ 
% 0.85/1.02             X1))),
% 0.85/1.02      inference('sup-', [status(thm)], ['12', '13'])).
% 0.85/1.02  thf('15', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.85/1.02      inference('demod', [status(thm)], ['7', '8'])).
% 0.85/1.02  thf('16', plain,
% 0.85/1.02      (![X0 : $i]:
% 0.85/1.02         (~ (v1_relat_1 @ k1_xboole_0)
% 0.85/1.02          | (v1_xboole_0 @ (k10_relat_1 @ k1_xboole_0 @ X0)))),
% 0.85/1.02      inference('sup-', [status(thm)], ['14', '15'])).
% 0.85/1.02  thf(t81_relat_1, axiom, (( k6_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ))).
% 0.85/1.02  thf('17', plain, (((k6_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.85/1.02      inference('cnf', [status(esa)], [t81_relat_1])).
% 0.85/1.02  thf(dt_k6_relat_1, axiom, (![A:$i]: ( v1_relat_1 @ ( k6_relat_1 @ A ) ))).
% 0.85/1.02  thf('18', plain, (![X11 : $i]: (v1_relat_1 @ (k6_relat_1 @ X11))),
% 0.85/1.02      inference('cnf', [status(esa)], [dt_k6_relat_1])).
% 0.85/1.02  thf('19', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.85/1.02      inference('sup+', [status(thm)], ['17', '18'])).
% 0.85/1.02  thf('20', plain,
% 0.85/1.02      (![X0 : $i]: (v1_xboole_0 @ (k10_relat_1 @ k1_xboole_0 @ X0))),
% 0.85/1.02      inference('demod', [status(thm)], ['16', '19'])).
% 0.85/1.02  thf('21', plain, ($false), inference('demod', [status(thm)], ['11', '20'])).
% 0.85/1.02  
% 0.85/1.02  % SZS output end Refutation
% 0.85/1.02  
% 0.85/1.03  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
