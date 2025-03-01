%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.V41Am5Lqqp

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:47:18 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   52 (  65 expanded)
%              Number of leaves         :   22 (  29 expanded)
%              Depth                    :   12
%              Number of atoms          :  422 ( 651 expanded)
%              Number of equality atoms :   45 (  60 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k11_relat_1_type,type,(
    k11_relat_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(d16_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( k11_relat_1 @ A @ B )
          = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) )).

thf('0',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k11_relat_1 @ X8 @ X9 )
        = ( k9_relat_1 @ X8 @ ( k1_tarski @ X9 ) ) )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[d16_relat_1])).

thf(l44_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( A
         != ( k1_tarski @ B ) )
        & ( A != k1_xboole_0 )
        & ! [C: $i] :
            ~ ( ( r2_hidden @ C @ A )
              & ( C != B ) ) ) )).

thf('1',plain,(
    ! [X6: $i,X7: $i] :
      ( ( X6 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C @ X7 @ X6 ) @ X6 )
      | ( X6
        = ( k1_tarski @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[l44_zfmisc_1])).

thf(t204_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( r2_hidden @ B @ ( k11_relat_1 @ C @ A ) ) ) ) )).

thf('2',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ~ ( r2_hidden @ X12 @ ( k11_relat_1 @ X13 @ X14 ) )
      | ( r2_hidden @ ( k4_tarski @ X14 @ X12 ) @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t204_relat_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k11_relat_1 @ X1 @ X0 )
        = ( k1_tarski @ X2 ) )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X1 )
      | ( r2_hidden @ ( k4_tarski @ X0 @ ( sk_C @ X2 @ ( k11_relat_1 @ X1 @ X0 ) ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t8_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( B
            = ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf('4',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X17 @ X19 ) @ X18 )
      | ( X19
        = ( k1_funct_1 @ X18 @ X17 ) )
      | ~ ( v1_funct_1 @ X18 )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k11_relat_1 @ X0 @ X1 )
        = k1_xboole_0 )
      | ( ( k11_relat_1 @ X0 @ X1 )
        = ( k1_tarski @ X2 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( sk_C @ X2 @ ( k11_relat_1 @ X0 @ X1 ) )
        = ( k1_funct_1 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( sk_C @ X2 @ ( k11_relat_1 @ X0 @ X1 ) )
        = ( k1_funct_1 @ X0 @ X1 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k11_relat_1 @ X0 @ X1 )
        = ( k1_tarski @ X2 ) )
      | ( ( k11_relat_1 @ X0 @ X1 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X6: $i,X7: $i] :
      ( ( X6 = k1_xboole_0 )
      | ( ( sk_C @ X7 @ X6 )
       != X7 )
      | ( X6
        = ( k1_tarski @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[l44_zfmisc_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_funct_1 @ X1 @ X0 )
       != X2 )
      | ~ ( v1_relat_1 @ X1 )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = k1_xboole_0 )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = ( k1_tarski @ X2 ) )
      | ~ ( v1_funct_1 @ X1 )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = ( k1_tarski @ X2 ) )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X1 )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = ( k1_tarski @ ( k1_funct_1 @ X1 @ X0 ) ) )
      | ( ( k11_relat_1 @ X1 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('10',plain,(
    ! [X10: $i,X11: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X10 @ X11 ) )
        = ( k9_relat_1 @ X10 @ X11 ) )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf(t168_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
       => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ ( k1_tarski @ A ) ) )
          = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
         => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ ( k1_tarski @ A ) ) )
            = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t168_funct_1])).

thf('11',plain,(
    ( k2_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) ) )
 != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
 != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != ( k11_relat_1 @ sk_B @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B )
    | ( ( k11_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 )
    | ~ ( v1_funct_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['9','14'])).

thf('16',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != ( k11_relat_1 @ sk_B @ sk_A ) )
    | ( ( k11_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['15','16','17'])).

thf('19',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t205_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
      <=> ( ( k11_relat_1 @ B @ A )
         != k1_xboole_0 ) ) ) )).

thf('20',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( r2_hidden @ X16 @ ( k1_relat_1 @ X15 ) )
      | ( ( k11_relat_1 @ X15 @ X16 )
       != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t205_relat_1])).

thf('21',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( ( k11_relat_1 @ sk_B @ sk_A )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    ( k11_relat_1 @ sk_B @ sk_A )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['21','22'])).

thf('24',plain,(
    ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
 != ( k11_relat_1 @ sk_B @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['18','23'])).

thf('25',plain,
    ( ( ( k11_relat_1 @ sk_B @ sk_A )
     != ( k11_relat_1 @ sk_B @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['0','24'])).

thf('26',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    ( k11_relat_1 @ sk_B @ sk_A )
 != ( k11_relat_1 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['25','26'])).

thf('28',plain,(
    $false ),
    inference(simplify,[status(thm)],['27'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.V41Am5Lqqp
% 0.13/0.33  % Computer   : n009.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % DateTime   : Tue Dec  1 19:16:26 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running portfolio for 600 s
% 0.13/0.33  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 43 iterations in 0.029s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.20/0.47  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.20/0.47  thf(k11_relat_1_type, type, k11_relat_1: $i > $i > $i).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.47  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.20/0.47  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.47  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.20/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.47  thf(d16_relat_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ A ) =>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ( k11_relat_1 @ A @ B ) = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) ))).
% 0.20/0.47  thf('0', plain,
% 0.20/0.47      (![X8 : $i, X9 : $i]:
% 0.20/0.47         (((k11_relat_1 @ X8 @ X9) = (k9_relat_1 @ X8 @ (k1_tarski @ X9)))
% 0.20/0.47          | ~ (v1_relat_1 @ X8))),
% 0.20/0.47      inference('cnf', [status(esa)], [d16_relat_1])).
% 0.20/0.47  thf(l44_zfmisc_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ~( ( ( A ) != ( k1_tarski @ B ) ) & ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.20/0.47          ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( ( C ) != ( B ) ) ) ) ) ) ))).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (![X6 : $i, X7 : $i]:
% 0.20/0.47         (((X6) = (k1_xboole_0))
% 0.20/0.47          | (r2_hidden @ (sk_C @ X7 @ X6) @ X6)
% 0.20/0.47          | ((X6) = (k1_tarski @ X7)))),
% 0.20/0.47      inference('cnf', [status(esa)], [l44_zfmisc_1])).
% 0.20/0.47  thf(t204_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ C ) =>
% 0.20/0.47       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.20/0.47         ( r2_hidden @ B @ ( k11_relat_1 @ C @ A ) ) ) ))).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.47         (~ (r2_hidden @ X12 @ (k11_relat_1 @ X13 @ X14))
% 0.20/0.47          | (r2_hidden @ (k4_tarski @ X14 @ X12) @ X13)
% 0.20/0.47          | ~ (v1_relat_1 @ X13))),
% 0.20/0.47      inference('cnf', [status(esa)], [t204_relat_1])).
% 0.20/0.47  thf('3', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.47         (((k11_relat_1 @ X1 @ X0) = (k1_tarski @ X2))
% 0.20/0.47          | ((k11_relat_1 @ X1 @ X0) = (k1_xboole_0))
% 0.20/0.47          | ~ (v1_relat_1 @ X1)
% 0.20/0.47          | (r2_hidden @ 
% 0.20/0.47             (k4_tarski @ X0 @ (sk_C @ X2 @ (k11_relat_1 @ X1 @ X0))) @ X1))),
% 0.20/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.47  thf(t8_funct_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.20/0.47       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.20/0.47         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.20/0.47           ( ( B ) = ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.20/0.47         (~ (r2_hidden @ (k4_tarski @ X17 @ X19) @ X18)
% 0.20/0.47          | ((X19) = (k1_funct_1 @ X18 @ X17))
% 0.20/0.47          | ~ (v1_funct_1 @ X18)
% 0.20/0.47          | ~ (v1_relat_1 @ X18))),
% 0.20/0.47      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.20/0.48  thf('5', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.48         (~ (v1_relat_1 @ X0)
% 0.20/0.48          | ((k11_relat_1 @ X0 @ X1) = (k1_xboole_0))
% 0.20/0.48          | ((k11_relat_1 @ X0 @ X1) = (k1_tarski @ X2))
% 0.20/0.48          | ~ (v1_relat_1 @ X0)
% 0.20/0.48          | ~ (v1_funct_1 @ X0)
% 0.20/0.48          | ((sk_C @ X2 @ (k11_relat_1 @ X0 @ X1)) = (k1_funct_1 @ X0 @ X1)))),
% 0.20/0.48      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.48  thf('6', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.48         (((sk_C @ X2 @ (k11_relat_1 @ X0 @ X1)) = (k1_funct_1 @ X0 @ X1))
% 0.20/0.48          | ~ (v1_funct_1 @ X0)
% 0.20/0.48          | ((k11_relat_1 @ X0 @ X1) = (k1_tarski @ X2))
% 0.20/0.48          | ((k11_relat_1 @ X0 @ X1) = (k1_xboole_0))
% 0.20/0.48          | ~ (v1_relat_1 @ X0))),
% 0.20/0.48      inference('simplify', [status(thm)], ['5'])).
% 0.20/0.48  thf('7', plain,
% 0.20/0.48      (![X6 : $i, X7 : $i]:
% 0.20/0.48         (((X6) = (k1_xboole_0))
% 0.20/0.48          | ((sk_C @ X7 @ X6) != (X7))
% 0.20/0.48          | ((X6) = (k1_tarski @ X7)))),
% 0.20/0.48      inference('cnf', [status(esa)], [l44_zfmisc_1])).
% 0.20/0.48  thf('8', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.48         (((k1_funct_1 @ X1 @ X0) != (X2))
% 0.20/0.48          | ~ (v1_relat_1 @ X1)
% 0.20/0.48          | ((k11_relat_1 @ X1 @ X0) = (k1_xboole_0))
% 0.20/0.48          | ((k11_relat_1 @ X1 @ X0) = (k1_tarski @ X2))
% 0.20/0.48          | ~ (v1_funct_1 @ X1)
% 0.20/0.48          | ((k11_relat_1 @ X1 @ X0) = (k1_tarski @ X2))
% 0.20/0.48          | ((k11_relat_1 @ X1 @ X0) = (k1_xboole_0)))),
% 0.20/0.48      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.48  thf('9', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (~ (v1_funct_1 @ X1)
% 0.20/0.48          | ((k11_relat_1 @ X1 @ X0) = (k1_tarski @ (k1_funct_1 @ X1 @ X0)))
% 0.20/0.48          | ((k11_relat_1 @ X1 @ X0) = (k1_xboole_0))
% 0.20/0.48          | ~ (v1_relat_1 @ X1))),
% 0.20/0.48      inference('simplify', [status(thm)], ['8'])).
% 0.20/0.48  thf(t148_relat_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( v1_relat_1 @ B ) =>
% 0.20/0.48       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 0.20/0.48  thf('10', plain,
% 0.20/0.48      (![X10 : $i, X11 : $i]:
% 0.20/0.48         (((k2_relat_1 @ (k7_relat_1 @ X10 @ X11)) = (k9_relat_1 @ X10 @ X11))
% 0.20/0.48          | ~ (v1_relat_1 @ X10))),
% 0.20/0.48      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.20/0.48  thf(t168_funct_1, conjecture,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.48       ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) =>
% 0.20/0.48         ( ( k2_relat_1 @ ( k7_relat_1 @ B @ ( k1_tarski @ A ) ) ) =
% 0.20/0.48           ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ))).
% 0.20/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.48    (~( ![A:$i,B:$i]:
% 0.20/0.48        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.48          ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) =>
% 0.20/0.48            ( ( k2_relat_1 @ ( k7_relat_1 @ B @ ( k1_tarski @ A ) ) ) =
% 0.20/0.48              ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )),
% 0.20/0.48    inference('cnf.neg', [status(esa)], [t168_funct_1])).
% 0.20/0.48  thf('11', plain,
% 0.20/0.48      (((k2_relat_1 @ (k7_relat_1 @ sk_B @ (k1_tarski @ sk_A)))
% 0.20/0.48         != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('12', plain,
% 0.20/0.48      ((((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A))
% 0.20/0.48          != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))
% 0.20/0.48        | ~ (v1_relat_1 @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.48  thf('13', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('14', plain,
% 0.20/0.48      (((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A))
% 0.20/0.48         != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))),
% 0.20/0.48      inference('demod', [status(thm)], ['12', '13'])).
% 0.20/0.48  thf('15', plain,
% 0.20/0.48      ((((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A))
% 0.20/0.48          != (k11_relat_1 @ sk_B @ sk_A))
% 0.20/0.48        | ~ (v1_relat_1 @ sk_B)
% 0.20/0.48        | ((k11_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))
% 0.20/0.48        | ~ (v1_funct_1 @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['9', '14'])).
% 0.20/0.48  thf('16', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('17', plain, ((v1_funct_1 @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('18', plain,
% 0.20/0.48      ((((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A))
% 0.20/0.48          != (k11_relat_1 @ sk_B @ sk_A))
% 0.20/0.48        | ((k11_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))),
% 0.20/0.48      inference('demod', [status(thm)], ['15', '16', '17'])).
% 0.20/0.48  thf('19', plain, ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_B))),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(t205_relat_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( v1_relat_1 @ B ) =>
% 0.20/0.48       ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) <=>
% 0.20/0.48         ( ( k11_relat_1 @ B @ A ) != ( k1_xboole_0 ) ) ) ))).
% 0.20/0.48  thf('20', plain,
% 0.20/0.48      (![X15 : $i, X16 : $i]:
% 0.20/0.48         (~ (r2_hidden @ X16 @ (k1_relat_1 @ X15))
% 0.20/0.48          | ((k11_relat_1 @ X15 @ X16) != (k1_xboole_0))
% 0.20/0.48          | ~ (v1_relat_1 @ X15))),
% 0.20/0.48      inference('cnf', [status(esa)], [t205_relat_1])).
% 0.20/0.48  thf('21', plain,
% 0.20/0.48      ((~ (v1_relat_1 @ sk_B) | ((k11_relat_1 @ sk_B @ sk_A) != (k1_xboole_0)))),
% 0.20/0.48      inference('sup-', [status(thm)], ['19', '20'])).
% 0.20/0.48  thf('22', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('23', plain, (((k11_relat_1 @ sk_B @ sk_A) != (k1_xboole_0))),
% 0.20/0.48      inference('demod', [status(thm)], ['21', '22'])).
% 0.20/0.48  thf('24', plain,
% 0.20/0.48      (((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) != (k11_relat_1 @ sk_B @ sk_A))),
% 0.20/0.48      inference('simplify_reflect-', [status(thm)], ['18', '23'])).
% 0.20/0.48  thf('25', plain,
% 0.20/0.48      ((((k11_relat_1 @ sk_B @ sk_A) != (k11_relat_1 @ sk_B @ sk_A))
% 0.20/0.48        | ~ (v1_relat_1 @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['0', '24'])).
% 0.20/0.48  thf('26', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('27', plain,
% 0.20/0.48      (((k11_relat_1 @ sk_B @ sk_A) != (k11_relat_1 @ sk_B @ sk_A))),
% 0.20/0.48      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.48  thf('28', plain, ($false), inference('simplify', [status(thm)], ['27'])).
% 0.20/0.48  
% 0.20/0.48  % SZS output end Refutation
% 0.20/0.48  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
