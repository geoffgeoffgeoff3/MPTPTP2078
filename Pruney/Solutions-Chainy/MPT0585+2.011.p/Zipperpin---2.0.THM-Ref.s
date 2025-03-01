%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.iuT0Jf2trP

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:43:28 EST 2020

% Result     : Theorem 0.74s
% Output     : Refutation 0.74s
% Verified   : 
% Statistics : Number of formulae       :   58 ( 108 expanded)
%              Number of leaves         :   14 (  34 expanded)
%              Depth                    :   20
%              Number of atoms          :  634 (1257 expanded)
%              Number of equality atoms :   44 (  92 expanded)
%              Maximal formula depth    :   13 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(t98_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k7_relat_1 @ A @ ( k1_relat_1 @ A ) )
        = A ) ) )).

thf('0',plain,(
    ! [X19: $i] :
      ( ( ( k7_relat_1 @ X19 @ ( k1_relat_1 @ X19 ) )
        = X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t98_relat_1])).

thf(t90_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('1',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ X15 ) @ X16 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t90_relat_1])).

thf('2',plain,(
    ! [X19: $i] :
      ( ( ( k7_relat_1 @ X19 @ ( k1_relat_1 @ X19 ) )
        = X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t98_relat_1])).

thf(t100_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
        = ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('3',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X2 @ X3 ) @ X4 )
        = ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ X0 @ X1 )
        = ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X0 ) @ X1 ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ X1 )
        = ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X0 ) @ X1 ) ) ) ) ),
    inference(simplify,[status(thm)],['4'])).

thf('6',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X2 @ X3 ) @ X4 )
        = ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('7',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ X15 ) @ X16 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t90_relat_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) ) @ X0 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf(dt_k7_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ A )
     => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ) )).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X2 )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) ) @ X0 ) ) ) ),
    inference(clc,[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) ) @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['5','10'])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) ) @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) )
        = ( k3_xboole_0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X0 ) @ ( k1_relat_1 @ X0 ) ) @ X1 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['1','12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) )
        = ( k3_xboole_0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X0 ) @ ( k1_relat_1 @ X0 ) ) @ X1 ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ X1 )
        = ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X0 ) @ X1 ) ) ) ) ),
    inference(simplify,[status(thm)],['4'])).

thf('16',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X2 @ X3 ) @ X4 )
        = ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ X2 )
        = ( k7_relat_1 @ X1 @ ( k3_xboole_0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X1 ) @ X0 ) @ X2 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ X2 )
        = ( k7_relat_1 @ X1 @ ( k3_xboole_0 @ ( k3_xboole_0 @ ( k1_relat_1 @ X1 ) @ X0 ) @ X2 ) ) ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) @ X0 )
        = ( k7_relat_1 @ X1 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['14','18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) @ X0 )
        = ( k7_relat_1 @ X1 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ X0 @ X1 )
        = ( k7_relat_1 @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['0','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ X1 )
        = ( k7_relat_1 @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X2 @ X3 ) @ X4 )
        = ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ X1 )
        = ( k7_relat_1 @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf(t89_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ ( k1_relat_1 @ B ) ) ) )).

thf('25',plain,(
    ! [X13: $i,X14: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X13 @ X14 ) ) @ ( k1_relat_1 @ X13 ) )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t89_relat_1])).

thf(t102_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r1_tarski @ A @ B )
       => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
          = ( k7_relat_1 @ C @ A ) ) ) ) )).

thf('26',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r1_tarski @ X5 @ X6 )
      | ~ ( v1_relat_1 @ X7 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X7 @ X5 ) @ X6 )
        = ( k7_relat_1 @ X7 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t102_relat_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X2 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) @ ( k1_relat_1 @ X0 ) )
        = ( k7_relat_1 @ X2 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ ( k1_relat_1 @ X1 ) )
        = ( k7_relat_1 @ X1 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['24','27'])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ ( k1_relat_1 @ X1 ) )
        = ( k7_relat_1 @ X1 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ X1 @ ( k1_relat_1 @ X0 ) ) )
        = ( k7_relat_1 @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['23','29'])).

thf('31',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ X1 @ ( k1_relat_1 @ X0 ) ) )
        = ( k7_relat_1 @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['30'])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ ( k1_relat_1 @ X1 ) ) )
        = ( k7_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['22','31'])).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k7_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ ( k1_relat_1 @ X1 ) ) )
        = ( k7_relat_1 @ X1 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['32'])).

thf('34',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ X15 ) @ X16 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t90_relat_1])).

thf(t189_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( k7_relat_1 @ A @ ( k1_relat_1 @ B ) )
            = ( k7_relat_1 @ A @ ( k1_relat_1 @ ( k7_relat_1 @ B @ ( k1_relat_1 @ A ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i] :
            ( ( v1_relat_1 @ B )
           => ( ( k7_relat_1 @ A @ ( k1_relat_1 @ B ) )
              = ( k7_relat_1 @ A @ ( k1_relat_1 @ ( k7_relat_1 @ B @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t189_relat_1])).

thf('35',plain,(
    ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) )
 != ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_A ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,
    ( ( ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) )
     != ( k7_relat_1 @ sk_A @ ( k3_xboole_0 @ ( k1_relat_1 @ sk_B ) @ ( k1_relat_1 @ sk_A ) ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) )
 != ( k7_relat_1 @ sk_A @ ( k3_xboole_0 @ ( k1_relat_1 @ sk_B ) @ ( k1_relat_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['36','37'])).

thf('39',plain,
    ( ( ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) )
     != ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) ) )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['33','38'])).

thf('40',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) )
 != ( k7_relat_1 @ sk_A @ ( k1_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['39','40'])).

thf('42',plain,(
    $false ),
    inference(simplify,[status(thm)],['41'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.iuT0Jf2trP
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 19:39:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.74/0.95  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.74/0.95  % Solved by: fo/fo7.sh
% 0.74/0.95  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.74/0.95  % done 521 iterations in 0.487s
% 0.74/0.95  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.74/0.95  % SZS output start Refutation
% 0.74/0.95  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.74/0.95  thf(sk_B_type, type, sk_B: $i).
% 0.74/0.95  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.74/0.95  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.74/0.95  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.74/0.95  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.74/0.95  thf(sk_A_type, type, sk_A: $i).
% 0.74/0.95  thf(t98_relat_1, axiom,
% 0.74/0.95    (![A:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ A ) =>
% 0.74/0.95       ( ( k7_relat_1 @ A @ ( k1_relat_1 @ A ) ) = ( A ) ) ))).
% 0.74/0.95  thf('0', plain,
% 0.74/0.95      (![X19 : $i]:
% 0.74/0.95         (((k7_relat_1 @ X19 @ (k1_relat_1 @ X19)) = (X19))
% 0.74/0.95          | ~ (v1_relat_1 @ X19))),
% 0.74/0.95      inference('cnf', [status(esa)], [t98_relat_1])).
% 0.74/0.95  thf(t90_relat_1, axiom,
% 0.74/0.95    (![A:$i,B:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ B ) =>
% 0.74/0.95       ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) =
% 0.74/0.95         ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.74/0.95  thf('1', plain,
% 0.74/0.95      (![X15 : $i, X16 : $i]:
% 0.74/0.95         (((k1_relat_1 @ (k7_relat_1 @ X15 @ X16))
% 0.74/0.95            = (k3_xboole_0 @ (k1_relat_1 @ X15) @ X16))
% 0.74/0.95          | ~ (v1_relat_1 @ X15))),
% 0.74/0.95      inference('cnf', [status(esa)], [t90_relat_1])).
% 0.74/0.95  thf('2', plain,
% 0.74/0.95      (![X19 : $i]:
% 0.74/0.95         (((k7_relat_1 @ X19 @ (k1_relat_1 @ X19)) = (X19))
% 0.74/0.95          | ~ (v1_relat_1 @ X19))),
% 0.74/0.95      inference('cnf', [status(esa)], [t98_relat_1])).
% 0.74/0.95  thf(t100_relat_1, axiom,
% 0.74/0.95    (![A:$i,B:$i,C:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ C ) =>
% 0.74/0.95       ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 0.74/0.95         ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ))).
% 0.74/0.95  thf('3', plain,
% 0.74/0.95      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X2 @ X3) @ X4)
% 0.74/0.95            = (k7_relat_1 @ X2 @ (k3_xboole_0 @ X3 @ X4)))
% 0.74/0.95          | ~ (v1_relat_1 @ X2))),
% 0.74/0.95      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.74/0.95  thf('4', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k7_relat_1 @ X0 @ X1)
% 0.74/0.95            = (k7_relat_1 @ X0 @ (k3_xboole_0 @ (k1_relat_1 @ X0) @ X1)))
% 0.74/0.95          | ~ (v1_relat_1 @ X0)
% 0.74/0.95          | ~ (v1_relat_1 @ X0))),
% 0.74/0.95      inference('sup+', [status(thm)], ['2', '3'])).
% 0.74/0.95  thf('5', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k7_relat_1 @ X0 @ X1)
% 0.74/0.95              = (k7_relat_1 @ X0 @ (k3_xboole_0 @ (k1_relat_1 @ X0) @ X1))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['4'])).
% 0.74/0.95  thf('6', plain,
% 0.74/0.95      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X2 @ X3) @ X4)
% 0.74/0.95            = (k7_relat_1 @ X2 @ (k3_xboole_0 @ X3 @ X4)))
% 0.74/0.95          | ~ (v1_relat_1 @ X2))),
% 0.74/0.95      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.74/0.95  thf('7', plain,
% 0.74/0.95      (![X15 : $i, X16 : $i]:
% 0.74/0.95         (((k1_relat_1 @ (k7_relat_1 @ X15 @ X16))
% 0.74/0.95            = (k3_xboole_0 @ (k1_relat_1 @ X15) @ X16))
% 0.74/0.95          | ~ (v1_relat_1 @ X15))),
% 0.74/0.95      inference('cnf', [status(esa)], [t90_relat_1])).
% 0.74/0.95  thf('8', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.74/0.95         (((k1_relat_1 @ (k7_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)))
% 0.74/0.95            = (k3_xboole_0 @ (k1_relat_1 @ (k7_relat_1 @ X2 @ X1)) @ X0))
% 0.74/0.95          | ~ (v1_relat_1 @ X2)
% 0.74/0.95          | ~ (v1_relat_1 @ (k7_relat_1 @ X2 @ X1)))),
% 0.74/0.95      inference('sup+', [status(thm)], ['6', '7'])).
% 0.74/0.95  thf(dt_k7_relat_1, axiom,
% 0.74/0.95    (![A:$i,B:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ A ) => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ))).
% 0.74/0.95  thf('9', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0) | (v1_relat_1 @ (k7_relat_1 @ X0 @ X1)))),
% 0.74/0.95      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 0.74/0.95  thf('10', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X2)
% 0.74/0.95          | ((k1_relat_1 @ (k7_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)))
% 0.74/0.95              = (k3_xboole_0 @ (k1_relat_1 @ (k7_relat_1 @ X2 @ X1)) @ X0)))),
% 0.74/0.95      inference('clc', [status(thm)], ['8', '9'])).
% 0.74/0.95  thf('11', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k1_relat_1 @ (k7_relat_1 @ X1 @ X0))
% 0.74/0.95            = (k3_xboole_0 @ 
% 0.74/0.95               (k1_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1))) @ X0))
% 0.74/0.95          | ~ (v1_relat_1 @ X1)
% 0.74/0.95          | ~ (v1_relat_1 @ X1))),
% 0.74/0.95      inference('sup+', [status(thm)], ['5', '10'])).
% 0.74/0.95  thf('12', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X1)
% 0.74/0.95          | ((k1_relat_1 @ (k7_relat_1 @ X1 @ X0))
% 0.74/0.95              = (k3_xboole_0 @ 
% 0.74/0.95                 (k1_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1))) @ X0)))),
% 0.74/0.95      inference('simplify', [status(thm)], ['11'])).
% 0.74/0.95  thf('13', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k1_relat_1 @ (k7_relat_1 @ X0 @ X1))
% 0.74/0.95            = (k3_xboole_0 @ 
% 0.74/0.95               (k3_xboole_0 @ (k1_relat_1 @ X0) @ (k1_relat_1 @ X0)) @ X1))
% 0.74/0.95          | ~ (v1_relat_1 @ X0)
% 0.74/0.95          | ~ (v1_relat_1 @ X0))),
% 0.74/0.95      inference('sup+', [status(thm)], ['1', '12'])).
% 0.74/0.95  thf('14', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k1_relat_1 @ (k7_relat_1 @ X0 @ X1))
% 0.74/0.95              = (k3_xboole_0 @ 
% 0.74/0.95                 (k3_xboole_0 @ (k1_relat_1 @ X0) @ (k1_relat_1 @ X0)) @ X1)))),
% 0.74/0.95      inference('simplify', [status(thm)], ['13'])).
% 0.74/0.95  thf('15', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k7_relat_1 @ X0 @ X1)
% 0.74/0.95              = (k7_relat_1 @ X0 @ (k3_xboole_0 @ (k1_relat_1 @ X0) @ X1))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['4'])).
% 0.74/0.95  thf('16', plain,
% 0.74/0.95      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X2 @ X3) @ X4)
% 0.74/0.95            = (k7_relat_1 @ X2 @ (k3_xboole_0 @ X3 @ X4)))
% 0.74/0.95          | ~ (v1_relat_1 @ X2))),
% 0.74/0.95      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.74/0.95  thf('17', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X1 @ X0) @ X2)
% 0.74/0.95            = (k7_relat_1 @ X1 @ 
% 0.74/0.95               (k3_xboole_0 @ (k3_xboole_0 @ (k1_relat_1 @ X1) @ X0) @ X2)))
% 0.74/0.95          | ~ (v1_relat_1 @ X1)
% 0.74/0.95          | ~ (v1_relat_1 @ X1))),
% 0.74/0.95      inference('sup+', [status(thm)], ['15', '16'])).
% 0.74/0.95  thf('18', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X1)
% 0.74/0.95          | ((k7_relat_1 @ (k7_relat_1 @ X1 @ X0) @ X2)
% 0.74/0.95              = (k7_relat_1 @ X1 @ 
% 0.74/0.95                 (k3_xboole_0 @ (k3_xboole_0 @ (k1_relat_1 @ X1) @ X0) @ X2))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['17'])).
% 0.74/0.95  thf('19', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1)) @ X0)
% 0.74/0.95            = (k7_relat_1 @ X1 @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0))))
% 0.74/0.95          | ~ (v1_relat_1 @ X1)
% 0.74/0.95          | ~ (v1_relat_1 @ X1))),
% 0.74/0.95      inference('sup+', [status(thm)], ['14', '18'])).
% 0.74/0.95  thf('20', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X1)
% 0.74/0.95          | ((k7_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1)) @ X0)
% 0.74/0.95              = (k7_relat_1 @ X1 @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['19'])).
% 0.74/0.95  thf('21', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k7_relat_1 @ X0 @ X1)
% 0.74/0.95            = (k7_relat_1 @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1))))
% 0.74/0.95          | ~ (v1_relat_1 @ X0)
% 0.74/0.95          | ~ (v1_relat_1 @ X0))),
% 0.74/0.95      inference('sup+', [status(thm)], ['0', '20'])).
% 0.74/0.95  thf('22', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k7_relat_1 @ X0 @ X1)
% 0.74/0.95              = (k7_relat_1 @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1)))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['21'])).
% 0.74/0.95  thf('23', plain,
% 0.74/0.95      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X2 @ X3) @ X4)
% 0.74/0.95            = (k7_relat_1 @ X2 @ (k3_xboole_0 @ X3 @ X4)))
% 0.74/0.95          | ~ (v1_relat_1 @ X2))),
% 0.74/0.95      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.74/0.95  thf('24', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k7_relat_1 @ X0 @ X1)
% 0.74/0.95              = (k7_relat_1 @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1)))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['21'])).
% 0.74/0.95  thf(t89_relat_1, axiom,
% 0.74/0.95    (![A:$i,B:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ B ) =>
% 0.74/0.95       ( r1_tarski @
% 0.74/0.95         ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ ( k1_relat_1 @ B ) ) ))).
% 0.74/0.95  thf('25', plain,
% 0.74/0.95      (![X13 : $i, X14 : $i]:
% 0.74/0.95         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X13 @ X14)) @ 
% 0.74/0.95           (k1_relat_1 @ X13))
% 0.74/0.95          | ~ (v1_relat_1 @ X13))),
% 0.74/0.95      inference('cnf', [status(esa)], [t89_relat_1])).
% 0.74/0.95  thf(t102_relat_1, axiom,
% 0.74/0.95    (![A:$i,B:$i,C:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ C ) =>
% 0.74/0.95       ( ( r1_tarski @ A @ B ) =>
% 0.74/0.95         ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) = ( k7_relat_1 @ C @ A ) ) ) ))).
% 0.74/0.95  thf('26', plain,
% 0.74/0.95      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.74/0.95         (~ (r1_tarski @ X5 @ X6)
% 0.74/0.95          | ~ (v1_relat_1 @ X7)
% 0.74/0.95          | ((k7_relat_1 @ (k7_relat_1 @ X7 @ X5) @ X6)
% 0.74/0.95              = (k7_relat_1 @ X7 @ X5)))),
% 0.74/0.95      inference('cnf', [status(esa)], [t102_relat_1])).
% 0.74/0.95  thf('27', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k7_relat_1 @ 
% 0.74/0.95              (k7_relat_1 @ X2 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1))) @ 
% 0.74/0.95              (k1_relat_1 @ X0))
% 0.74/0.95              = (k7_relat_1 @ X2 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1))))
% 0.74/0.95          | ~ (v1_relat_1 @ X2))),
% 0.74/0.95      inference('sup-', [status(thm)], ['25', '26'])).
% 0.74/0.95  thf('28', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k7_relat_1 @ (k7_relat_1 @ X1 @ X0) @ (k1_relat_1 @ X1))
% 0.74/0.95            = (k7_relat_1 @ X1 @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0))))
% 0.74/0.95          | ~ (v1_relat_1 @ X1)
% 0.74/0.95          | ~ (v1_relat_1 @ X1)
% 0.74/0.95          | ~ (v1_relat_1 @ X1))),
% 0.74/0.95      inference('sup+', [status(thm)], ['24', '27'])).
% 0.74/0.95  thf('29', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X1)
% 0.74/0.95          | ((k7_relat_1 @ (k7_relat_1 @ X1 @ X0) @ (k1_relat_1 @ X1))
% 0.74/0.95              = (k7_relat_1 @ X1 @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['28'])).
% 0.74/0.95  thf('30', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k7_relat_1 @ X0 @ (k3_xboole_0 @ X1 @ (k1_relat_1 @ X0)))
% 0.74/0.95            = (k7_relat_1 @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1))))
% 0.74/0.95          | ~ (v1_relat_1 @ X0)
% 0.74/0.95          | ~ (v1_relat_1 @ X0))),
% 0.74/0.95      inference('sup+', [status(thm)], ['23', '29'])).
% 0.74/0.95  thf('31', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X0)
% 0.74/0.95          | ((k7_relat_1 @ X0 @ (k3_xboole_0 @ X1 @ (k1_relat_1 @ X0)))
% 0.74/0.95              = (k7_relat_1 @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X0 @ X1)))))),
% 0.74/0.95      inference('simplify', [status(thm)], ['30'])).
% 0.74/0.95  thf('32', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (((k7_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ (k1_relat_1 @ X1)))
% 0.74/0.95            = (k7_relat_1 @ X1 @ X0))
% 0.74/0.95          | ~ (v1_relat_1 @ X1)
% 0.74/0.95          | ~ (v1_relat_1 @ X1))),
% 0.74/0.95      inference('sup+', [status(thm)], ['22', '31'])).
% 0.74/0.95  thf('33', plain,
% 0.74/0.95      (![X0 : $i, X1 : $i]:
% 0.74/0.95         (~ (v1_relat_1 @ X1)
% 0.74/0.95          | ((k7_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ (k1_relat_1 @ X1)))
% 0.74/0.95              = (k7_relat_1 @ X1 @ X0)))),
% 0.74/0.95      inference('simplify', [status(thm)], ['32'])).
% 0.74/0.95  thf('34', plain,
% 0.74/0.95      (![X15 : $i, X16 : $i]:
% 0.74/0.95         (((k1_relat_1 @ (k7_relat_1 @ X15 @ X16))
% 0.74/0.95            = (k3_xboole_0 @ (k1_relat_1 @ X15) @ X16))
% 0.74/0.95          | ~ (v1_relat_1 @ X15))),
% 0.74/0.95      inference('cnf', [status(esa)], [t90_relat_1])).
% 0.74/0.95  thf(t189_relat_1, conjecture,
% 0.74/0.95    (![A:$i]:
% 0.74/0.95     ( ( v1_relat_1 @ A ) =>
% 0.74/0.95       ( ![B:$i]:
% 0.74/0.95         ( ( v1_relat_1 @ B ) =>
% 0.74/0.95           ( ( k7_relat_1 @ A @ ( k1_relat_1 @ B ) ) =
% 0.74/0.95             ( k7_relat_1 @
% 0.74/0.95               A @ ( k1_relat_1 @ ( k7_relat_1 @ B @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ))).
% 0.74/0.95  thf(zf_stmt_0, negated_conjecture,
% 0.74/0.95    (~( ![A:$i]:
% 0.74/0.95        ( ( v1_relat_1 @ A ) =>
% 0.74/0.95          ( ![B:$i]:
% 0.74/0.95            ( ( v1_relat_1 @ B ) =>
% 0.74/0.95              ( ( k7_relat_1 @ A @ ( k1_relat_1 @ B ) ) =
% 0.74/0.95                ( k7_relat_1 @
% 0.74/0.95                  A @ ( k1_relat_1 @ ( k7_relat_1 @ B @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) )),
% 0.74/0.95    inference('cnf.neg', [status(esa)], [t189_relat_1])).
% 0.74/0.95  thf('35', plain,
% 0.74/0.95      (((k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B))
% 0.74/0.95         != (k7_relat_1 @ sk_A @ 
% 0.74/0.95             (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_A)))))),
% 0.74/0.95      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.74/0.95  thf('36', plain,
% 0.74/0.95      ((((k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B))
% 0.74/0.95          != (k7_relat_1 @ sk_A @ 
% 0.74/0.95              (k3_xboole_0 @ (k1_relat_1 @ sk_B) @ (k1_relat_1 @ sk_A))))
% 0.74/0.95        | ~ (v1_relat_1 @ sk_B))),
% 0.74/0.95      inference('sup-', [status(thm)], ['34', '35'])).
% 0.74/0.95  thf('37', plain, ((v1_relat_1 @ sk_B)),
% 0.74/0.95      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.74/0.95  thf('38', plain,
% 0.74/0.95      (((k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B))
% 0.74/0.95         != (k7_relat_1 @ sk_A @ 
% 0.74/0.95             (k3_xboole_0 @ (k1_relat_1 @ sk_B) @ (k1_relat_1 @ sk_A))))),
% 0.74/0.95      inference('demod', [status(thm)], ['36', '37'])).
% 0.74/0.95  thf('39', plain,
% 0.74/0.95      ((((k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B))
% 0.74/0.95          != (k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B)))
% 0.74/0.95        | ~ (v1_relat_1 @ sk_A))),
% 0.74/0.95      inference('sup-', [status(thm)], ['33', '38'])).
% 0.74/0.95  thf('40', plain, ((v1_relat_1 @ sk_A)),
% 0.74/0.95      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.74/0.95  thf('41', plain,
% 0.74/0.95      (((k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B))
% 0.74/0.95         != (k7_relat_1 @ sk_A @ (k1_relat_1 @ sk_B)))),
% 0.74/0.95      inference('demod', [status(thm)], ['39', '40'])).
% 0.74/0.95  thf('42', plain, ($false), inference('simplify', [status(thm)], ['41'])).
% 0.74/0.95  
% 0.74/0.95  % SZS output end Refutation
% 0.74/0.95  
% 0.74/0.96  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
