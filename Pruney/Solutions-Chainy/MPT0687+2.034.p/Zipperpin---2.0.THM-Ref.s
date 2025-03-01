%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Cj3vg2Q2mx

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:15 EST 2020

% Result     : Theorem 0.19s
% Output     : Refutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   50 ( 100 expanded)
%              Number of leaves         :   16 (  33 expanded)
%              Depth                    :   14
%              Number of atoms          :  334 ( 858 expanded)
%              Number of equality atoms :   28 (  73 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(l27_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ) )).

thf('0',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X5 ) @ X6 )
      | ( r2_hidden @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( r1_xboole_0 @ X0 @ ( k1_tarski @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t173_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( ( k10_relat_1 @ B @ A )
          = k1_xboole_0 )
      <=> ( r1_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('3',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_relat_1 @ X10 ) @ X11 )
      | ( ( k10_relat_1 @ X10 @ X11 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t173_relat_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ ( k2_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ( ( k10_relat_1 @ X1 @ ( k1_tarski @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t142_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) )
      <=> ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) )
         != k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) )
        <=> ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) )
           != k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t142_funct_1])).

thf('5',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 )
    | ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['5'])).

thf('7',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 )
    | ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 )
    | ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['7'])).

thf('9',plain,
    ( ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
   <= ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['7'])).

thf('10',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(split,[status(esa)],['5'])).

thf('11',plain,(
    ! [X10: $i,X11: $i] :
      ( ( ( k10_relat_1 @ X10 @ X11 )
       != k1_xboole_0 )
      | ( r1_xboole_0 @ ( k2_relat_1 @ X10 ) @ X11 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t173_relat_1])).

thf('12',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( v1_relat_1 @ sk_B )
      | ( r1_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,
    ( ( r1_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['14'])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('17',plain,
    ( ( r1_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k2_relat_1 @ sk_B ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('18',plain,(
    ! [X2: $i] :
      ( ( k2_tarski @ X2 @ X2 )
      = ( k1_tarski @ X2 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t55_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
        & ( r2_hidden @ A @ C ) ) )).

thf('19',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_tarski @ X7 @ X8 ) @ X9 )
      | ~ ( r2_hidden @ X7 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t55_zfmisc_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ ( k1_tarski @ X0 ) @ X1 )
      | ~ ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['17','20'])).

thf('22',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
    | ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['9','21'])).

thf('23',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
    | ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(split,[status(esa)],['5'])).

thf('24',plain,(
    ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sat_resolution*',[status(thm)],['8','22','23'])).

thf('25',plain,(
    ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(simpl_trail,[status(thm)],['6','24'])).

thf('26',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['4','25'])).

thf('27',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,
    ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['26','27'])).

thf('29',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['7'])).

thf('30',plain,(
    ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
 != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['8','22'])).

thf('31',plain,(
    ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
 != k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['29','30'])).

thf('32',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['28','31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Cj3vg2Q2mx
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 19:27:57 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.19/0.46  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.19/0.46  % Solved by: fo/fo7.sh
% 0.19/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.19/0.46  % done 39 iterations in 0.018s
% 0.19/0.46  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.19/0.46  % SZS output start Refutation
% 0.19/0.46  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.19/0.46  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.19/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.19/0.46  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.19/0.46  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.19/0.46  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.19/0.46  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.19/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.19/0.46  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.19/0.46  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.19/0.46  thf(l27_zfmisc_1, axiom,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( ~( r2_hidden @ A @ B ) ) => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ))).
% 0.19/0.46  thf('0', plain,
% 0.19/0.46      (![X5 : $i, X6 : $i]:
% 0.19/0.46         ((r1_xboole_0 @ (k1_tarski @ X5) @ X6) | (r2_hidden @ X5 @ X6))),
% 0.19/0.46      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 0.19/0.46  thf(symmetry_r1_xboole_0, axiom,
% 0.19/0.46    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.19/0.46  thf('1', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.19/0.46      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.19/0.46  thf('2', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         ((r2_hidden @ X1 @ X0) | (r1_xboole_0 @ X0 @ (k1_tarski @ X1)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['0', '1'])).
% 0.19/0.46  thf(t173_relat_1, axiom,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( v1_relat_1 @ B ) =>
% 0.19/0.46       ( ( ( k10_relat_1 @ B @ A ) = ( k1_xboole_0 ) ) <=>
% 0.19/0.46         ( r1_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.19/0.46  thf('3', plain,
% 0.19/0.46      (![X10 : $i, X11 : $i]:
% 0.19/0.46         (~ (r1_xboole_0 @ (k2_relat_1 @ X10) @ X11)
% 0.19/0.46          | ((k10_relat_1 @ X10 @ X11) = (k1_xboole_0))
% 0.19/0.46          | ~ (v1_relat_1 @ X10))),
% 0.19/0.46      inference('cnf', [status(esa)], [t173_relat_1])).
% 0.19/0.46  thf('4', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         ((r2_hidden @ X0 @ (k2_relat_1 @ X1))
% 0.19/0.46          | ~ (v1_relat_1 @ X1)
% 0.19/0.46          | ((k10_relat_1 @ X1 @ (k1_tarski @ X0)) = (k1_xboole_0)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['2', '3'])).
% 0.19/0.46  thf(t142_funct_1, conjecture,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( v1_relat_1 @ B ) =>
% 0.19/0.46       ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) ) <=>
% 0.19/0.46         ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) ) != ( k1_xboole_0 ) ) ) ))).
% 0.19/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.19/0.46    (~( ![A:$i,B:$i]:
% 0.19/0.46        ( ( v1_relat_1 @ B ) =>
% 0.19/0.46          ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) ) <=>
% 0.19/0.46            ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) ) != ( k1_xboole_0 ) ) ) ) )),
% 0.19/0.46    inference('cnf.neg', [status(esa)], [t142_funct_1])).
% 0.19/0.46  thf('5', plain,
% 0.19/0.46      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))
% 0.19/0.46        | ~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('6', plain,
% 0.19/0.46      ((~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))
% 0.19/0.46         <= (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))))),
% 0.19/0.46      inference('split', [status(esa)], ['5'])).
% 0.19/0.46  thf('7', plain,
% 0.19/0.46      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) != (k1_xboole_0))
% 0.19/0.46        | (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('8', plain,
% 0.19/0.46      (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))) | 
% 0.19/0.46       ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.19/0.46      inference('split', [status(esa)], ['7'])).
% 0.19/0.46  thf('9', plain,
% 0.19/0.46      (((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))
% 0.19/0.46         <= (((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))))),
% 0.19/0.46      inference('split', [status(esa)], ['7'])).
% 0.19/0.46  thf('10', plain,
% 0.19/0.46      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))
% 0.19/0.46         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('split', [status(esa)], ['5'])).
% 0.19/0.46  thf('11', plain,
% 0.19/0.46      (![X10 : $i, X11 : $i]:
% 0.19/0.46         (((k10_relat_1 @ X10 @ X11) != (k1_xboole_0))
% 0.19/0.46          | (r1_xboole_0 @ (k2_relat_1 @ X10) @ X11)
% 0.19/0.46          | ~ (v1_relat_1 @ X10))),
% 0.19/0.46      inference('cnf', [status(esa)], [t173_relat_1])).
% 0.19/0.46  thf('12', plain,
% 0.19/0.46      (((((k1_xboole_0) != (k1_xboole_0))
% 0.19/0.46         | ~ (v1_relat_1 @ sk_B)
% 0.19/0.46         | (r1_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A))))
% 0.19/0.46         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('sup-', [status(thm)], ['10', '11'])).
% 0.19/0.46  thf('13', plain, ((v1_relat_1 @ sk_B)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('14', plain,
% 0.19/0.46      (((((k1_xboole_0) != (k1_xboole_0))
% 0.19/0.46         | (r1_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A))))
% 0.19/0.46         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('demod', [status(thm)], ['12', '13'])).
% 0.19/0.46  thf('15', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A)))
% 0.19/0.46         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('simplify', [status(thm)], ['14'])).
% 0.19/0.46  thf('16', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.19/0.46      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.19/0.46  thf('17', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k1_tarski @ sk_A) @ (k2_relat_1 @ sk_B)))
% 0.19/0.46         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('sup-', [status(thm)], ['15', '16'])).
% 0.19/0.46  thf(t69_enumset1, axiom,
% 0.19/0.46    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.19/0.46  thf('18', plain, (![X2 : $i]: ((k2_tarski @ X2 @ X2) = (k1_tarski @ X2))),
% 0.19/0.46      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.19/0.46  thf(t55_zfmisc_1, axiom,
% 0.19/0.46    (![A:$i,B:$i,C:$i]:
% 0.19/0.46     ( ~( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) & ( r2_hidden @ A @ C ) ) ))).
% 0.19/0.46  thf('19', plain,
% 0.19/0.46      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.19/0.46         (~ (r1_xboole_0 @ (k2_tarski @ X7 @ X8) @ X9)
% 0.19/0.46          | ~ (r2_hidden @ X7 @ X9))),
% 0.19/0.46      inference('cnf', [status(esa)], [t55_zfmisc_1])).
% 0.19/0.46  thf('20', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         (~ (r1_xboole_0 @ (k1_tarski @ X0) @ X1) | ~ (r2_hidden @ X0 @ X1))),
% 0.19/0.46      inference('sup-', [status(thm)], ['18', '19'])).
% 0.19/0.46  thf('21', plain,
% 0.19/0.46      ((~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))
% 0.19/0.46         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('sup-', [status(thm)], ['17', '20'])).
% 0.19/0.46  thf('22', plain,
% 0.19/0.46      (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))) | 
% 0.19/0.46       ~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['9', '21'])).
% 0.19/0.46  thf('23', plain,
% 0.19/0.46      (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))) | 
% 0.19/0.46       (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))),
% 0.19/0.46      inference('split', [status(esa)], ['5'])).
% 0.19/0.46  thf('24', plain, (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.19/0.46      inference('sat_resolution*', [status(thm)], ['8', '22', '23'])).
% 0.19/0.46  thf('25', plain, (~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))),
% 0.19/0.46      inference('simpl_trail', [status(thm)], ['6', '24'])).
% 0.19/0.46  thf('26', plain,
% 0.19/0.46      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))
% 0.19/0.46        | ~ (v1_relat_1 @ sk_B))),
% 0.19/0.46      inference('sup-', [status(thm)], ['4', '25'])).
% 0.19/0.46  thf('27', plain, ((v1_relat_1 @ sk_B)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('28', plain,
% 0.19/0.46      (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))),
% 0.19/0.46      inference('demod', [status(thm)], ['26', '27'])).
% 0.19/0.46  thf('29', plain,
% 0.19/0.46      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) != (k1_xboole_0)))
% 0.19/0.46         <= (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.19/0.46      inference('split', [status(esa)], ['7'])).
% 0.19/0.46  thf('30', plain,
% 0.19/0.46      (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))),
% 0.19/0.46      inference('sat_resolution*', [status(thm)], ['8', '22'])).
% 0.19/0.46  thf('31', plain,
% 0.19/0.46      (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) != (k1_xboole_0))),
% 0.19/0.46      inference('simpl_trail', [status(thm)], ['29', '30'])).
% 0.19/0.46  thf('32', plain, ($false),
% 0.19/0.46      inference('simplify_reflect-', [status(thm)], ['28', '31'])).
% 0.19/0.46  
% 0.19/0.46  % SZS output end Refutation
% 0.19/0.46  
% 0.19/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
