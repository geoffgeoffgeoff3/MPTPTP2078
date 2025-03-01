%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.wMM6xip8ZG

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:39:52 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   66 (  89 expanded)
%              Number of leaves         :   22 (  35 expanded)
%              Depth                    :   13
%              Number of atoms          :  356 ( 664 expanded)
%              Number of equality atoms :    5 (   6 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_relat_1_type,type,(
    k3_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t30_relat_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
       => ( ( r2_hidden @ A @ ( k3_relat_1 @ C ) )
          & ( r2_hidden @ B @ ( k3_relat_1 @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( v1_relat_1 @ C )
       => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
         => ( ( r2_hidden @ A @ ( k3_relat_1 @ C ) )
            & ( r2_hidden @ B @ ( k3_relat_1 @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t30_relat_1])).

thf('0',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) )
    | ~ ( r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) )
   <= ~ ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf(d6_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k3_relat_1 @ A )
        = ( k2_xboole_0 @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ A ) ) ) ) )).

thf('2',plain,(
    ! [X36: $i] :
      ( ( ( k3_relat_1 @ X36 )
        = ( k2_xboole_0 @ ( k1_relat_1 @ X36 ) @ ( k2_relat_1 @ X36 ) ) )
      | ~ ( v1_relat_1 @ X36 ) ) ),
    inference(cnf,[status(esa)],[d6_relat_1])).

thf('3',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ sk_B ) @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t20_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
       => ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( r2_hidden @ B @ ( k2_relat_1 @ C ) ) ) ) ) )).

thf('4',plain,(
    ! [X37: $i,X38: $i,X39: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X37 @ X38 ) @ X39 )
      | ( r2_hidden @ X37 @ ( k1_relat_1 @ X39 ) )
      | ~ ( v1_relat_1 @ X39 ) ) ),
    inference(cnf,[status(esa)],[t20_relat_1])).

thf('5',plain,
    ( ~ ( v1_relat_1 @ sk_C_1 )
    | ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C_1 ) ),
    inference(demod,[status(thm)],['5','6'])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('8',plain,(
    ! [X4: $i,X5: $i] :
      ( r1_tarski @ X4 @ ( k2_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_xboole_0 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ X2 @ X1 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i] :
      ( r2_hidden @ sk_A @ ( k2_xboole_0 @ ( k1_relat_1 @ sk_C_1 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['7','10'])).

thf('12',plain,
    ( ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) )
    | ~ ( v1_relat_1 @ sk_C_1 ) ),
    inference('sup+',[status(thm)],['2','11'])).

thf('13',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,
    ( $false
   <= ~ ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) ) ),
    inference(demod,[status(thm)],['1','14'])).

thf('16',plain,(
    ! [X36: $i] :
      ( ( ( k3_relat_1 @ X36 )
        = ( k2_xboole_0 @ ( k1_relat_1 @ X36 ) @ ( k2_relat_1 @ X36 ) ) )
      | ~ ( v1_relat_1 @ X36 ) ) ),
    inference(cnf,[status(esa)],[d6_relat_1])).

thf('17',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ sk_B ) @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    ! [X37: $i,X38: $i,X39: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X37 @ X38 ) @ X39 )
      | ( r2_hidden @ X38 @ ( k2_relat_1 @ X39 ) )
      | ~ ( v1_relat_1 @ X39 ) ) ),
    inference(cnf,[status(esa)],[t20_relat_1])).

thf('19',plain,
    ( ~ ( v1_relat_1 @ sk_C_1 )
    | ( r2_hidden @ sk_B @ ( k2_relat_1 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    r2_hidden @ sk_B @ ( k2_relat_1 @ sk_C_1 ) ),
    inference(demod,[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('23',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ~ ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ X0 @ X0 )
      | ( r1_tarski @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference(simplify,[status(thm)],['24'])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('26',plain,(
    ! [X31: $i,X32: $i,X33: $i] :
      ( ( r2_hidden @ X33 @ X32 )
      | ~ ( r1_tarski @ ( k2_tarski @ X31 @ X33 ) @ X32 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X0 @ ( k2_tarski @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf(l49_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ) )).

thf('28',plain,(
    ! [X26: $i,X27: $i] :
      ( ( r1_tarski @ X26 @ ( k3_tarski @ X27 ) )
      | ~ ( r2_hidden @ X26 @ X27 ) ) ),
    inference(cnf,[status(esa)],[l49_zfmisc_1])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('30',plain,(
    ! [X28: $i,X29: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X28 @ X29 ) )
      = ( k2_xboole_0 @ X28 @ X29 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('31',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('33',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_xboole_0 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ X2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X0: $i] :
      ( r2_hidden @ sk_B @ ( k2_xboole_0 @ X0 @ ( k2_relat_1 @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['21','33'])).

thf('35',plain,
    ( ( r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) )
    | ~ ( v1_relat_1 @ sk_C_1 ) ),
    inference('sup+',[status(thm)],['16','34'])).

thf('36',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,
    ( ~ ( r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) )
   <= ~ ( r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf('39',plain,(
    r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) )
    | ~ ( r2_hidden @ sk_B @ ( k3_relat_1 @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf('41',plain,(
    ~ ( r2_hidden @ sk_A @ ( k3_relat_1 @ sk_C_1 ) ) ),
    inference('sat_resolution*',[status(thm)],['39','40'])).

thf('42',plain,(
    $false ),
    inference(simpl_trail,[status(thm)],['15','41'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.wMM6xip8ZG
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:33:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.51  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.51  % Solved by: fo/fo7.sh
% 0.21/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.51  % done 134 iterations in 0.056s
% 0.21/0.51  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.51  % SZS output start Refutation
% 0.21/0.51  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.21/0.51  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.51  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.51  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.21/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.51  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.21/0.51  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.51  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.51  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.21/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.51  thf(k3_relat_1_type, type, k3_relat_1: $i > $i).
% 0.21/0.51  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.51  thf(t30_relat_1, conjecture,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ C ) =>
% 0.21/0.51       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) =>
% 0.21/0.51         ( ( r2_hidden @ A @ ( k3_relat_1 @ C ) ) & 
% 0.21/0.51           ( r2_hidden @ B @ ( k3_relat_1 @ C ) ) ) ) ))).
% 0.21/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.51    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.51        ( ( v1_relat_1 @ C ) =>
% 0.21/0.51          ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) =>
% 0.21/0.51            ( ( r2_hidden @ A @ ( k3_relat_1 @ C ) ) & 
% 0.21/0.51              ( r2_hidden @ B @ ( k3_relat_1 @ C ) ) ) ) ) )),
% 0.21/0.51    inference('cnf.neg', [status(esa)], [t30_relat_1])).
% 0.21/0.51  thf('0', plain,
% 0.21/0.51      ((~ (r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1))
% 0.21/0.51        | ~ (r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('1', plain,
% 0.21/0.51      ((~ (r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1)))
% 0.21/0.51         <= (~ ((r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1))))),
% 0.21/0.51      inference('split', [status(esa)], ['0'])).
% 0.21/0.51  thf(d6_relat_1, axiom,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ A ) =>
% 0.21/0.51       ( ( k3_relat_1 @ A ) =
% 0.21/0.51         ( k2_xboole_0 @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ A ) ) ) ))).
% 0.21/0.51  thf('2', plain,
% 0.21/0.51      (![X36 : $i]:
% 0.21/0.51         (((k3_relat_1 @ X36)
% 0.21/0.51            = (k2_xboole_0 @ (k1_relat_1 @ X36) @ (k2_relat_1 @ X36)))
% 0.21/0.51          | ~ (v1_relat_1 @ X36))),
% 0.21/0.51      inference('cnf', [status(esa)], [d6_relat_1])).
% 0.21/0.51  thf('3', plain, ((r2_hidden @ (k4_tarski @ sk_A @ sk_B) @ sk_C_1)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(t20_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ C ) =>
% 0.21/0.51       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) =>
% 0.21/0.51         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.21/0.51           ( r2_hidden @ B @ ( k2_relat_1 @ C ) ) ) ) ))).
% 0.21/0.51  thf('4', plain,
% 0.21/0.51      (![X37 : $i, X38 : $i, X39 : $i]:
% 0.21/0.51         (~ (r2_hidden @ (k4_tarski @ X37 @ X38) @ X39)
% 0.21/0.51          | (r2_hidden @ X37 @ (k1_relat_1 @ X39))
% 0.21/0.51          | ~ (v1_relat_1 @ X39))),
% 0.21/0.51      inference('cnf', [status(esa)], [t20_relat_1])).
% 0.21/0.51  thf('5', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ sk_C_1) | (r2_hidden @ sk_A @ (k1_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['3', '4'])).
% 0.21/0.51  thf('6', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('7', plain, ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C_1))),
% 0.21/0.51      inference('demod', [status(thm)], ['5', '6'])).
% 0.21/0.51  thf(t7_xboole_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.21/0.51  thf('8', plain,
% 0.21/0.51      (![X4 : $i, X5 : $i]: (r1_tarski @ X4 @ (k2_xboole_0 @ X4 @ X5))),
% 0.21/0.51      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.21/0.51  thf(d3_tarski, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( r1_tarski @ A @ B ) <=>
% 0.21/0.51       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.21/0.51  thf('9', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.51         (~ (r2_hidden @ X0 @ X1)
% 0.21/0.51          | (r2_hidden @ X0 @ X2)
% 0.21/0.51          | ~ (r1_tarski @ X1 @ X2))),
% 0.21/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.51  thf('10', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.51         ((r2_hidden @ X2 @ (k2_xboole_0 @ X1 @ X0)) | ~ (r2_hidden @ X2 @ X1))),
% 0.21/0.51      inference('sup-', [status(thm)], ['8', '9'])).
% 0.21/0.51  thf('11', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         (r2_hidden @ sk_A @ (k2_xboole_0 @ (k1_relat_1 @ sk_C_1) @ X0))),
% 0.21/0.51      inference('sup-', [status(thm)], ['7', '10'])).
% 0.21/0.51  thf('12', plain,
% 0.21/0.51      (((r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1)) | ~ (v1_relat_1 @ sk_C_1))),
% 0.21/0.51      inference('sup+', [status(thm)], ['2', '11'])).
% 0.21/0.51  thf('13', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('14', plain, ((r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1))),
% 0.21/0.51      inference('demod', [status(thm)], ['12', '13'])).
% 0.21/0.51  thf('15', plain,
% 0.21/0.51      (($false) <= (~ ((r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1))))),
% 0.21/0.51      inference('demod', [status(thm)], ['1', '14'])).
% 0.21/0.51  thf('16', plain,
% 0.21/0.51      (![X36 : $i]:
% 0.21/0.51         (((k3_relat_1 @ X36)
% 0.21/0.51            = (k2_xboole_0 @ (k1_relat_1 @ X36) @ (k2_relat_1 @ X36)))
% 0.21/0.51          | ~ (v1_relat_1 @ X36))),
% 0.21/0.51      inference('cnf', [status(esa)], [d6_relat_1])).
% 0.21/0.51  thf('17', plain, ((r2_hidden @ (k4_tarski @ sk_A @ sk_B) @ sk_C_1)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('18', plain,
% 0.21/0.51      (![X37 : $i, X38 : $i, X39 : $i]:
% 0.21/0.51         (~ (r2_hidden @ (k4_tarski @ X37 @ X38) @ X39)
% 0.21/0.51          | (r2_hidden @ X38 @ (k2_relat_1 @ X39))
% 0.21/0.51          | ~ (v1_relat_1 @ X39))),
% 0.21/0.51      inference('cnf', [status(esa)], [t20_relat_1])).
% 0.21/0.51  thf('19', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ sk_C_1) | (r2_hidden @ sk_B @ (k2_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['17', '18'])).
% 0.21/0.51  thf('20', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('21', plain, ((r2_hidden @ sk_B @ (k2_relat_1 @ sk_C_1))),
% 0.21/0.51      inference('demod', [status(thm)], ['19', '20'])).
% 0.21/0.51  thf('22', plain,
% 0.21/0.51      (![X1 : $i, X3 : $i]:
% 0.21/0.51         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.21/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.51  thf('23', plain,
% 0.21/0.51      (![X1 : $i, X3 : $i]:
% 0.21/0.51         ((r1_tarski @ X1 @ X3) | ~ (r2_hidden @ (sk_C @ X3 @ X1) @ X3))),
% 0.21/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.51  thf('24', plain,
% 0.21/0.51      (![X0 : $i]: ((r1_tarski @ X0 @ X0) | (r1_tarski @ X0 @ X0))),
% 0.21/0.51      inference('sup-', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('25', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.21/0.51      inference('simplify', [status(thm)], ['24'])).
% 0.21/0.51  thf(t38_zfmisc_1, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.21/0.51       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.21/0.51  thf('26', plain,
% 0.21/0.51      (![X31 : $i, X32 : $i, X33 : $i]:
% 0.21/0.51         ((r2_hidden @ X33 @ X32)
% 0.21/0.51          | ~ (r1_tarski @ (k2_tarski @ X31 @ X33) @ X32))),
% 0.21/0.51      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.21/0.51  thf('27', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i]: (r2_hidden @ X0 @ (k2_tarski @ X1 @ X0))),
% 0.21/0.51      inference('sup-', [status(thm)], ['25', '26'])).
% 0.21/0.51  thf(l49_zfmisc_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ))).
% 0.21/0.51  thf('28', plain,
% 0.21/0.51      (![X26 : $i, X27 : $i]:
% 0.21/0.51         ((r1_tarski @ X26 @ (k3_tarski @ X27)) | ~ (r2_hidden @ X26 @ X27))),
% 0.21/0.51      inference('cnf', [status(esa)], [l49_zfmisc_1])).
% 0.21/0.51  thf('29', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i]:
% 0.21/0.51         (r1_tarski @ X0 @ (k3_tarski @ (k2_tarski @ X1 @ X0)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['27', '28'])).
% 0.21/0.51  thf(l51_zfmisc_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.21/0.51  thf('30', plain,
% 0.21/0.51      (![X28 : $i, X29 : $i]:
% 0.21/0.51         ((k3_tarski @ (k2_tarski @ X28 @ X29)) = (k2_xboole_0 @ X28 @ X29))),
% 0.21/0.51      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.21/0.51  thf('31', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i]: (r1_tarski @ X0 @ (k2_xboole_0 @ X1 @ X0))),
% 0.21/0.51      inference('demod', [status(thm)], ['29', '30'])).
% 0.21/0.51  thf('32', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.51         (~ (r2_hidden @ X0 @ X1)
% 0.21/0.51          | (r2_hidden @ X0 @ X2)
% 0.21/0.51          | ~ (r1_tarski @ X1 @ X2))),
% 0.21/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.51  thf('33', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.51         ((r2_hidden @ X2 @ (k2_xboole_0 @ X1 @ X0)) | ~ (r2_hidden @ X2 @ X0))),
% 0.21/0.51      inference('sup-', [status(thm)], ['31', '32'])).
% 0.21/0.51  thf('34', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         (r2_hidden @ sk_B @ (k2_xboole_0 @ X0 @ (k2_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['21', '33'])).
% 0.21/0.51  thf('35', plain,
% 0.21/0.51      (((r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1)) | ~ (v1_relat_1 @ sk_C_1))),
% 0.21/0.51      inference('sup+', [status(thm)], ['16', '34'])).
% 0.21/0.51  thf('36', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('37', plain, ((r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1))),
% 0.21/0.51      inference('demod', [status(thm)], ['35', '36'])).
% 0.21/0.51  thf('38', plain,
% 0.21/0.51      ((~ (r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1)))
% 0.21/0.51         <= (~ ((r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1))))),
% 0.21/0.51      inference('split', [status(esa)], ['0'])).
% 0.21/0.51  thf('39', plain, (((r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['37', '38'])).
% 0.21/0.51  thf('40', plain,
% 0.21/0.51      (~ ((r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1))) | 
% 0.21/0.51       ~ ((r2_hidden @ sk_B @ (k3_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('split', [status(esa)], ['0'])).
% 0.21/0.51  thf('41', plain, (~ ((r2_hidden @ sk_A @ (k3_relat_1 @ sk_C_1)))),
% 0.21/0.51      inference('sat_resolution*', [status(thm)], ['39', '40'])).
% 0.21/0.51  thf('42', plain, ($false),
% 0.21/0.51      inference('simpl_trail', [status(thm)], ['15', '41'])).
% 0.21/0.51  
% 0.21/0.51  % SZS output end Refutation
% 0.21/0.51  
% 0.35/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
