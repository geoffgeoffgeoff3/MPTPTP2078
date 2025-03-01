%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.LZI90kAZKv

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:43:03 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   46 (  60 expanded)
%              Number of leaves         :   22 (  28 expanded)
%              Depth                    :   10
%              Number of atoms          :  257 ( 348 expanded)
%              Number of equality atoms :   23 (  32 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(t172_relat_1,conjecture,(
    ! [A: $i] :
      ( ( k10_relat_1 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( k10_relat_1 @ k1_xboole_0 @ A )
        = k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t172_relat_1])).

thf('0',plain,(
    ( k10_relat_1 @ k1_xboole_0 @ sk_A )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ! [C: $i] :
          ( ( r2_hidden @ C @ A )
        <=> ( r2_hidden @ C @ B ) )
     => ( A = B ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf(t166_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ A @ ( k10_relat_1 @ C @ B ) )
      <=> ? [D: $i] :
            ( ( r2_hidden @ D @ B )
            & ( r2_hidden @ ( k4_tarski @ A @ D ) @ C )
            & ( r2_hidden @ D @ ( k2_relat_1 @ C ) ) ) ) ) )).

thf('2',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ~ ( r2_hidden @ X17 @ ( k10_relat_1 @ X18 @ X16 ) )
      | ( r2_hidden @ ( k4_tarski @ X17 @ ( sk_D @ X18 @ X16 @ X17 ) ) @ X18 )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t166_relat_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ ( sk_C @ ( k10_relat_1 @ X1 @ X0 ) @ X2 ) @ X2 )
      | ( X2
        = ( k10_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_C @ ( k10_relat_1 @ X1 @ X0 ) @ X2 ) @ ( sk_D @ X1 @ X0 @ ( sk_C @ ( k10_relat_1 @ X1 @ X0 ) @ X2 ) ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('4',plain,(
    ! [X6: $i] :
      ( ( k4_xboole_0 @ X6 @ k1_xboole_0 )
      = X6 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('5',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ ( k4_xboole_0 @ X7 @ X8 ) )
      = ( k3_xboole_0 @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k3_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X6: $i] :
      ( ( k4_xboole_0 @ X6 @ k1_xboole_0 )
      = X6 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('8',plain,
    ( ( k3_xboole_0 @ k1_xboole_0 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup+',[status(thm)],['6','7'])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('9',plain,(
    ! [X2: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X2 @ X5 ) )
      | ~ ( r1_xboole_0 @ X2 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('10',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ k1_xboole_0 )
      | ~ ( r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('11',plain,(
    ! [X9: $i] :
      ( r1_xboole_0 @ X9 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf('12',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ k1_xboole_0 )
      | ( X0
        = ( k10_relat_1 @ k1_xboole_0 @ X1 ) )
      | ( r2_hidden @ ( sk_C @ ( k10_relat_1 @ k1_xboole_0 @ X1 ) @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','12'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('14',plain,(
    ! [X11: $i,X12: $i] :
      ( ( ( k2_zfmisc_1 @ X11 @ X12 )
        = k1_xboole_0 )
      | ( X11 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('15',plain,(
    ! [X12: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X12 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['14'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('16',plain,(
    ! [X13: $i,X14: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('17',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0
        = ( k10_relat_1 @ k1_xboole_0 @ X1 ) )
      | ( r2_hidden @ ( sk_C @ ( k10_relat_1 @ k1_xboole_0 @ X1 ) @ X0 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['13','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('20',plain,(
    ! [X0: $i] :
      ( k1_xboole_0
      = ( k10_relat_1 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['0','20'])).

thf('22',plain,(
    $false ),
    inference(simplify,[status(thm)],['21'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.LZI90kAZKv
% 0.14/0.34  % Computer   : n003.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 18:27:27 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.57  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.57  % Solved by: fo/fo7.sh
% 0.21/0.57  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.57  % done 190 iterations in 0.094s
% 0.21/0.57  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.57  % SZS output start Refutation
% 0.21/0.57  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.57  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.21/0.57  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.21/0.57  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.57  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.57  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.21/0.57  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.57  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.57  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.57  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.21/0.57  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.21/0.57  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.57  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.57  thf(t172_relat_1, conjecture,
% 0.21/0.57    (![A:$i]: ( ( k10_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 0.21/0.57  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.57    (~( ![A:$i]: ( ( k10_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) )),
% 0.21/0.57    inference('cnf.neg', [status(esa)], [t172_relat_1])).
% 0.21/0.57  thf('0', plain, (((k10_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0))),
% 0.21/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.57  thf(t2_tarski, axiom,
% 0.21/0.57    (![A:$i,B:$i]:
% 0.21/0.57     ( ( ![C:$i]: ( ( r2_hidden @ C @ A ) <=> ( r2_hidden @ C @ B ) ) ) =>
% 0.21/0.57       ( ( A ) = ( B ) ) ))).
% 0.21/0.57  thf('1', plain,
% 0.21/0.57      (![X0 : $i, X1 : $i]:
% 0.21/0.57         (((X1) = (X0))
% 0.21/0.57          | (r2_hidden @ (sk_C @ X0 @ X1) @ X0)
% 0.21/0.57          | (r2_hidden @ (sk_C @ X0 @ X1) @ X1))),
% 0.21/0.57      inference('cnf', [status(esa)], [t2_tarski])).
% 0.21/0.57  thf(t166_relat_1, axiom,
% 0.21/0.57    (![A:$i,B:$i,C:$i]:
% 0.21/0.57     ( ( v1_relat_1 @ C ) =>
% 0.21/0.57       ( ( r2_hidden @ A @ ( k10_relat_1 @ C @ B ) ) <=>
% 0.21/0.57         ( ?[D:$i]:
% 0.21/0.57           ( ( r2_hidden @ D @ B ) & 
% 0.21/0.57             ( r2_hidden @ ( k4_tarski @ A @ D ) @ C ) & 
% 0.21/0.57             ( r2_hidden @ D @ ( k2_relat_1 @ C ) ) ) ) ) ))).
% 0.21/0.57  thf('2', plain,
% 0.21/0.57      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.21/0.57         (~ (r2_hidden @ X17 @ (k10_relat_1 @ X18 @ X16))
% 0.21/0.57          | (r2_hidden @ (k4_tarski @ X17 @ (sk_D @ X18 @ X16 @ X17)) @ X18)
% 0.21/0.57          | ~ (v1_relat_1 @ X18))),
% 0.21/0.57      inference('cnf', [status(esa)], [t166_relat_1])).
% 0.21/0.57  thf('3', plain,
% 0.21/0.57      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.57         ((r2_hidden @ (sk_C @ (k10_relat_1 @ X1 @ X0) @ X2) @ X2)
% 0.21/0.57          | ((X2) = (k10_relat_1 @ X1 @ X0))
% 0.21/0.57          | ~ (v1_relat_1 @ X1)
% 0.21/0.57          | (r2_hidden @ 
% 0.21/0.57             (k4_tarski @ (sk_C @ (k10_relat_1 @ X1 @ X0) @ X2) @ 
% 0.21/0.57              (sk_D @ X1 @ X0 @ (sk_C @ (k10_relat_1 @ X1 @ X0) @ X2))) @ 
% 0.21/0.57             X1))),
% 0.21/0.57      inference('sup-', [status(thm)], ['1', '2'])).
% 0.21/0.57  thf(t3_boole, axiom,
% 0.21/0.57    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.21/0.57  thf('4', plain, (![X6 : $i]: ((k4_xboole_0 @ X6 @ k1_xboole_0) = (X6))),
% 0.21/0.57      inference('cnf', [status(esa)], [t3_boole])).
% 0.21/0.57  thf(t48_xboole_1, axiom,
% 0.21/0.57    (![A:$i,B:$i]:
% 0.21/0.57     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.57  thf('5', plain,
% 0.21/0.57      (![X7 : $i, X8 : $i]:
% 0.21/0.57         ((k4_xboole_0 @ X7 @ (k4_xboole_0 @ X7 @ X8))
% 0.21/0.57           = (k3_xboole_0 @ X7 @ X8))),
% 0.21/0.57      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.21/0.57  thf('6', plain,
% 0.21/0.57      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k3_xboole_0 @ X0 @ k1_xboole_0))),
% 0.21/0.57      inference('sup+', [status(thm)], ['4', '5'])).
% 0.21/0.57  thf('7', plain, (![X6 : $i]: ((k4_xboole_0 @ X6 @ k1_xboole_0) = (X6))),
% 0.21/0.57      inference('cnf', [status(esa)], [t3_boole])).
% 0.21/0.57  thf('8', plain,
% 0.21/0.57      (((k3_xboole_0 @ k1_xboole_0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.21/0.57      inference('sup+', [status(thm)], ['6', '7'])).
% 0.21/0.57  thf(t4_xboole_0, axiom,
% 0.21/0.57    (![A:$i,B:$i]:
% 0.21/0.57     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.21/0.57            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.21/0.57       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.21/0.57            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.21/0.57  thf('9', plain,
% 0.21/0.57      (![X2 : $i, X4 : $i, X5 : $i]:
% 0.21/0.57         (~ (r2_hidden @ X4 @ (k3_xboole_0 @ X2 @ X5))
% 0.21/0.57          | ~ (r1_xboole_0 @ X2 @ X5))),
% 0.21/0.57      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.21/0.57  thf('10', plain,
% 0.21/0.57      (![X0 : $i]:
% 0.21/0.57         (~ (r2_hidden @ X0 @ k1_xboole_0)
% 0.21/0.57          | ~ (r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0))),
% 0.21/0.57      inference('sup-', [status(thm)], ['8', '9'])).
% 0.21/0.57  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.21/0.57  thf('11', plain, (![X9 : $i]: (r1_xboole_0 @ X9 @ k1_xboole_0)),
% 0.21/0.57      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.21/0.57  thf('12', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.21/0.57      inference('demod', [status(thm)], ['10', '11'])).
% 0.21/0.57  thf('13', plain,
% 0.21/0.57      (![X0 : $i, X1 : $i]:
% 0.21/0.57         (~ (v1_relat_1 @ k1_xboole_0)
% 0.21/0.57          | ((X0) = (k10_relat_1 @ k1_xboole_0 @ X1))
% 0.21/0.57          | (r2_hidden @ (sk_C @ (k10_relat_1 @ k1_xboole_0 @ X1) @ X0) @ X0))),
% 0.21/0.57      inference('sup-', [status(thm)], ['3', '12'])).
% 0.21/0.57  thf(t113_zfmisc_1, axiom,
% 0.21/0.57    (![A:$i,B:$i]:
% 0.21/0.57     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.21/0.57       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.21/0.57  thf('14', plain,
% 0.21/0.57      (![X11 : $i, X12 : $i]:
% 0.21/0.57         (((k2_zfmisc_1 @ X11 @ X12) = (k1_xboole_0))
% 0.21/0.57          | ((X11) != (k1_xboole_0)))),
% 0.21/0.57      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.21/0.57  thf('15', plain,
% 0.21/0.57      (![X12 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X12) = (k1_xboole_0))),
% 0.21/0.57      inference('simplify', [status(thm)], ['14'])).
% 0.21/0.57  thf(fc6_relat_1, axiom,
% 0.21/0.57    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.21/0.57  thf('16', plain,
% 0.21/0.57      (![X13 : $i, X14 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X13 @ X14))),
% 0.21/0.57      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.21/0.57  thf('17', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.21/0.57      inference('sup+', [status(thm)], ['15', '16'])).
% 0.21/0.57  thf('18', plain,
% 0.21/0.57      (![X0 : $i, X1 : $i]:
% 0.21/0.57         (((X0) = (k10_relat_1 @ k1_xboole_0 @ X1))
% 0.21/0.57          | (r2_hidden @ (sk_C @ (k10_relat_1 @ k1_xboole_0 @ X1) @ X0) @ X0))),
% 0.21/0.57      inference('demod', [status(thm)], ['13', '17'])).
% 0.21/0.57  thf('19', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.21/0.57      inference('demod', [status(thm)], ['10', '11'])).
% 0.21/0.57  thf('20', plain,
% 0.21/0.57      (![X0 : $i]: ((k1_xboole_0) = (k10_relat_1 @ k1_xboole_0 @ X0))),
% 0.21/0.57      inference('sup-', [status(thm)], ['18', '19'])).
% 0.21/0.57  thf('21', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.21/0.57      inference('demod', [status(thm)], ['0', '20'])).
% 0.21/0.57  thf('22', plain, ($false), inference('simplify', [status(thm)], ['21'])).
% 0.21/0.57  
% 0.21/0.57  % SZS output end Refutation
% 0.21/0.57  
% 0.21/0.57  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
