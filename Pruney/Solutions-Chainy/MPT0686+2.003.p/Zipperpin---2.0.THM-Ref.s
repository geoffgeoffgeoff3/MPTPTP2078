%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.hi7YO1pTuX

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:09 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   42 (  68 expanded)
%              Number of leaves         :   18 (  29 expanded)
%              Depth                    :   11
%              Number of atoms          :  272 ( 552 expanded)
%              Number of equality atoms :   14 (  20 expanded)
%              Maximal formula depth    :   14 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i > $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(d14_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i,C: $i] :
          ( ( C
            = ( k10_relat_1 @ A @ B ) )
        <=> ! [D: $i] :
              ( ( r2_hidden @ D @ C )
            <=> ? [E: $i] :
                  ( ( r2_hidden @ E @ B )
                  & ( r2_hidden @ ( k4_tarski @ D @ E ) @ A ) ) ) ) ) )).

thf('0',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( r2_hidden @ ( sk_D @ X7 @ X8 @ X9 ) @ X7 )
      | ( r2_hidden @ ( sk_E @ X7 @ X8 @ X9 ) @ X8 )
      | ( X7
        = ( k10_relat_1 @ X9 @ X8 ) )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[d14_relat_1])).

thf(t141_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i,C: $i] :
          ( ( r1_xboole_0 @ B @ C )
         => ( r1_xboole_0 @ ( k10_relat_1 @ A @ B ) @ ( k10_relat_1 @ A @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ! [B: $i,C: $i] :
            ( ( r1_xboole_0 @ B @ C )
           => ( r1_xboole_0 @ ( k10_relat_1 @ A @ B ) @ ( k10_relat_1 @ A @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t141_funct_1])).

thf('1',plain,(
    r1_xboole_0 @ sk_B @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ X1 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('3',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C_1 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('4',plain,(
    ! [X3: $i,X5: $i,X6: $i] :
      ( ~ ( r2_hidden @ X5 @ ( k3_xboole_0 @ X3 @ X6 ) )
      | ~ ( r1_xboole_0 @ X3 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ k1_xboole_0 )
      | ~ ( r1_xboole_0 @ sk_B @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    r1_xboole_0 @ sk_B @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k10_relat_1 @ X0 @ X1 ) )
      | ( r2_hidden @ ( sk_E @ k1_xboole_0 @ X1 @ X0 ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['0','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k10_relat_1 @ X0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C_1 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t137_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( k10_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) )
        = ( k3_xboole_0 @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) ) ) )).

thf('12',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ( ( k10_relat_1 @ X15 @ ( k3_xboole_0 @ X16 @ X17 ) )
        = ( k3_xboole_0 @ ( k10_relat_1 @ X15 @ X16 ) @ ( k10_relat_1 @ X15 @ X17 ) ) )
      | ~ ( v1_funct_1 @ X15 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t137_funct_1])).

thf('13',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ( ( k3_xboole_0 @ X0 @ X2 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k10_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
       != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_funct_1 @ X2 )
      | ( r1_xboole_0 @ ( k10_relat_1 @ X2 @ X1 ) @ ( k10_relat_1 @ X2 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( ( k10_relat_1 @ X0 @ k1_xboole_0 )
       != k1_xboole_0 )
      | ( r1_xboole_0 @ ( k10_relat_1 @ X0 @ sk_B ) @ ( k10_relat_1 @ X0 @ sk_C_1 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( r1_xboole_0 @ ( k10_relat_1 @ X0 @ sk_B ) @ ( k10_relat_1 @ X0 @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['10','15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( r1_xboole_0 @ ( k10_relat_1 @ X0 @ sk_B ) @ ( k10_relat_1 @ X0 @ sk_C_1 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['16'])).

thf('18',plain,(
    ~ ( r1_xboole_0 @ ( k10_relat_1 @ sk_A @ sk_B ) @ ( k10_relat_1 @ sk_A @ sk_C_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    $false ),
    inference(demod,[status(thm)],['19','20','21'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.hi7YO1pTuX
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:36:08 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.22/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.48  % Solved by: fo/fo7.sh
% 0.22/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.48  % done 21 iterations in 0.022s
% 0.22/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.48  % SZS output start Refutation
% 0.22/0.48  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.48  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.22/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.48  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.22/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.48  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.48  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.22/0.48  thf(sk_E_type, type, sk_E: $i > $i > $i > $i).
% 0.22/0.48  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.22/0.48  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.22/0.48  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.22/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.48  thf(d14_relat_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ A ) =>
% 0.22/0.48       ( ![B:$i,C:$i]:
% 0.22/0.48         ( ( ( C ) = ( k10_relat_1 @ A @ B ) ) <=>
% 0.22/0.48           ( ![D:$i]:
% 0.22/0.48             ( ( r2_hidden @ D @ C ) <=>
% 0.22/0.48               ( ?[E:$i]:
% 0.22/0.48                 ( ( r2_hidden @ E @ B ) & 
% 0.22/0.48                   ( r2_hidden @ ( k4_tarski @ D @ E ) @ A ) ) ) ) ) ) ) ))).
% 0.22/0.48  thf('0', plain,
% 0.22/0.48      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.22/0.48         ((r2_hidden @ (sk_D @ X7 @ X8 @ X9) @ X7)
% 0.22/0.48          | (r2_hidden @ (sk_E @ X7 @ X8 @ X9) @ X8)
% 0.22/0.48          | ((X7) = (k10_relat_1 @ X9 @ X8))
% 0.22/0.48          | ~ (v1_relat_1 @ X9))),
% 0.22/0.48      inference('cnf', [status(esa)], [d14_relat_1])).
% 0.22/0.48  thf(t141_funct_1, conjecture,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.22/0.48       ( ![B:$i,C:$i]:
% 0.22/0.48         ( ( r1_xboole_0 @ B @ C ) =>
% 0.22/0.48           ( r1_xboole_0 @ ( k10_relat_1 @ A @ B ) @ ( k10_relat_1 @ A @ C ) ) ) ) ))).
% 0.22/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.48    (~( ![A:$i]:
% 0.22/0.48        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.22/0.48          ( ![B:$i,C:$i]:
% 0.22/0.48            ( ( r1_xboole_0 @ B @ C ) =>
% 0.22/0.48              ( r1_xboole_0 @ ( k10_relat_1 @ A @ B ) @ ( k10_relat_1 @ A @ C ) ) ) ) ) )),
% 0.22/0.48    inference('cnf.neg', [status(esa)], [t141_funct_1])).
% 0.22/0.48  thf('1', plain, ((r1_xboole_0 @ sk_B @ sk_C_1)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(d7_xboole_0, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.22/0.48       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.22/0.48  thf('2', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (((k3_xboole_0 @ X0 @ X1) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.22/0.48      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.22/0.48  thf('3', plain, (((k3_xboole_0 @ sk_B @ sk_C_1) = (k1_xboole_0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.48  thf(t4_xboole_0, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.22/0.48            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.22/0.48       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.22/0.48            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.22/0.48  thf('4', plain,
% 0.22/0.48      (![X3 : $i, X5 : $i, X6 : $i]:
% 0.22/0.48         (~ (r2_hidden @ X5 @ (k3_xboole_0 @ X3 @ X6))
% 0.22/0.48          | ~ (r1_xboole_0 @ X3 @ X6))),
% 0.22/0.48      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.22/0.48  thf('5', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (~ (r2_hidden @ X0 @ k1_xboole_0) | ~ (r1_xboole_0 @ sk_B @ sk_C_1))),
% 0.22/0.48      inference('sup-', [status(thm)], ['3', '4'])).
% 0.22/0.48  thf('6', plain, ((r1_xboole_0 @ sk_B @ sk_C_1)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('7', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.22/0.48      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.48  thf('8', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ X0)
% 0.22/0.48          | ((k1_xboole_0) = (k10_relat_1 @ X0 @ X1))
% 0.22/0.48          | (r2_hidden @ (sk_E @ k1_xboole_0 @ X1 @ X0) @ X1))),
% 0.22/0.48      inference('sup-', [status(thm)], ['0', '7'])).
% 0.22/0.48  thf('9', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.22/0.48      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.48  thf('10', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (((k1_xboole_0) = (k10_relat_1 @ X0 @ k1_xboole_0))
% 0.22/0.48          | ~ (v1_relat_1 @ X0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['8', '9'])).
% 0.22/0.48  thf('11', plain, (((k3_xboole_0 @ sk_B @ sk_C_1) = (k1_xboole_0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.48  thf(t137_funct_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.22/0.48       ( ( k10_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) =
% 0.22/0.48         ( k3_xboole_0 @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) ) ))).
% 0.22/0.48  thf('12', plain,
% 0.22/0.48      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.22/0.48         (((k10_relat_1 @ X15 @ (k3_xboole_0 @ X16 @ X17))
% 0.22/0.48            = (k3_xboole_0 @ (k10_relat_1 @ X15 @ X16) @ 
% 0.22/0.48               (k10_relat_1 @ X15 @ X17)))
% 0.22/0.48          | ~ (v1_funct_1 @ X15)
% 0.22/0.48          | ~ (v1_relat_1 @ X15))),
% 0.22/0.48      inference('cnf', [status(esa)], [t137_funct_1])).
% 0.22/0.48  thf('13', plain,
% 0.22/0.48      (![X0 : $i, X2 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ X0 @ X2) | ((k3_xboole_0 @ X0 @ X2) != (k1_xboole_0)))),
% 0.22/0.48      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.22/0.48  thf('14', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.48         (((k10_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)) != (k1_xboole_0))
% 0.22/0.48          | ~ (v1_relat_1 @ X2)
% 0.22/0.48          | ~ (v1_funct_1 @ X2)
% 0.22/0.48          | (r1_xboole_0 @ (k10_relat_1 @ X2 @ X1) @ (k10_relat_1 @ X2 @ X0)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['12', '13'])).
% 0.22/0.48  thf('15', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (((k10_relat_1 @ X0 @ k1_xboole_0) != (k1_xboole_0))
% 0.22/0.48          | (r1_xboole_0 @ (k10_relat_1 @ X0 @ sk_B) @ 
% 0.22/0.48             (k10_relat_1 @ X0 @ sk_C_1))
% 0.22/0.48          | ~ (v1_funct_1 @ X0)
% 0.22/0.48          | ~ (v1_relat_1 @ X0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['11', '14'])).
% 0.22/0.48  thf('16', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (((k1_xboole_0) != (k1_xboole_0))
% 0.22/0.48          | ~ (v1_relat_1 @ X0)
% 0.22/0.48          | ~ (v1_relat_1 @ X0)
% 0.22/0.48          | ~ (v1_funct_1 @ X0)
% 0.22/0.48          | (r1_xboole_0 @ (k10_relat_1 @ X0 @ sk_B) @ 
% 0.22/0.48             (k10_relat_1 @ X0 @ sk_C_1)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['10', '15'])).
% 0.22/0.48  thf('17', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ (k10_relat_1 @ X0 @ sk_B) @ 
% 0.22/0.48           (k10_relat_1 @ X0 @ sk_C_1))
% 0.22/0.48          | ~ (v1_funct_1 @ X0)
% 0.22/0.48          | ~ (v1_relat_1 @ X0))),
% 0.22/0.48      inference('simplify', [status(thm)], ['16'])).
% 0.22/0.48  thf('18', plain,
% 0.22/0.48      (~ (r1_xboole_0 @ (k10_relat_1 @ sk_A @ sk_B) @ 
% 0.22/0.48          (k10_relat_1 @ sk_A @ sk_C_1))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('19', plain, ((~ (v1_relat_1 @ sk_A) | ~ (v1_funct_1 @ sk_A))),
% 0.22/0.48      inference('sup-', [status(thm)], ['17', '18'])).
% 0.22/0.48  thf('20', plain, ((v1_relat_1 @ sk_A)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('21', plain, ((v1_funct_1 @ sk_A)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('22', plain, ($false),
% 0.22/0.48      inference('demod', [status(thm)], ['19', '20', '21'])).
% 0.22/0.48  
% 0.22/0.48  % SZS output end Refutation
% 0.22/0.48  
% 0.22/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
