%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.PVsLYcmSli

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:02:26 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   77 ( 137 expanded)
%              Number of leaves         :   27 (  54 expanded)
%              Depth                    :   13
%              Number of atoms          :  516 (1618 expanded)
%              Number of equality atoms :    5 (  53 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(k4_orders_2_type,type,(
    k4_orders_2: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(m2_orders_2_type,type,(
    m2_orders_2: $i > $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(v5_orders_2_type,type,(
    v5_orders_2: $i > $o )).

thf(m1_orders_1_type,type,(
    m1_orders_1: $i > $i > $o )).

thf(l1_orders_2_type,type,(
    l1_orders_2: $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v4_orders_2_type,type,(
    v4_orders_2: $i > $o )).

thf(v3_orders_2_type,type,(
    v3_orders_2: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_orders_1_type,type,(
    k1_orders_1: $i > $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(t87_orders_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( k3_tarski @ ( k4_orders_2 @ A @ B ) )
           != k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v3_orders_2 @ A )
          & ( v4_orders_2 @ A )
          & ( v5_orders_2 @ A )
          & ( l1_orders_2 @ A ) )
       => ! [B: $i] :
            ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
           => ( ( k3_tarski @ ( k4_orders_2 @ A @ B ) )
             != k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t87_orders_2])).

thf('0',plain,(
    m1_orders_1 @ sk_B @ ( k1_orders_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(existence_m2_orders_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A )
        & ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) )
     => ? [C: $i] :
          ( m2_orders_2 @ C @ A @ B ) ) )).

thf('1',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( l1_orders_2 @ X15 )
      | ~ ( v5_orders_2 @ X15 )
      | ~ ( v4_orders_2 @ X15 )
      | ~ ( v3_orders_2 @ X15 )
      | ( v2_struct_0 @ X15 )
      | ~ ( m1_orders_1 @ X16 @ ( k1_orders_1 @ ( u1_struct_0 @ X15 ) ) )
      | ( m2_orders_2 @ ( sk_C_1 @ X16 @ X15 ) @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[existence_m2_orders_2])).

thf('2',plain,
    ( ( m2_orders_2 @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A @ sk_B )
    | ( v2_struct_0 @ sk_A )
    | ~ ( v3_orders_2 @ sk_A )
    | ~ ( v4_orders_2 @ sk_A )
    | ~ ( v5_orders_2 @ sk_A )
    | ~ ( l1_orders_2 @ sk_A ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ( m2_orders_2 @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A @ sk_B )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['2','3','4','5','6'])).

thf('8',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    m2_orders_2 @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A @ sk_B ),
    inference(clc,[status(thm)],['7','8'])).

thf('10',plain,(
    m1_orders_1 @ sk_B @ ( k1_orders_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t79_orders_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m2_orders_2 @ C @ A @ B )
             => ( r2_hidden @ ( k1_funct_1 @ B @ ( u1_struct_0 @ A ) ) @ C ) ) ) ) )).

thf('11',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( m1_orders_1 @ X17 @ ( k1_orders_1 @ ( u1_struct_0 @ X18 ) ) )
      | ( r2_hidden @ ( k1_funct_1 @ X17 @ ( u1_struct_0 @ X18 ) ) @ X19 )
      | ~ ( m2_orders_2 @ X19 @ X18 @ X17 )
      | ~ ( l1_orders_2 @ X18 )
      | ~ ( v5_orders_2 @ X18 )
      | ~ ( v4_orders_2 @ X18 )
      | ~ ( v3_orders_2 @ X18 )
      | ( v2_struct_0 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t79_orders_2])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_B )
      | ( r2_hidden @ ( k1_funct_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_B )
      | ( r2_hidden @ ( k1_funct_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ X0 ) ) ),
    inference(demod,[status(thm)],['12','13','14','15','16'])).

thf('18',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ X0 )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_B ) ) ),
    inference(clc,[status(thm)],['17','18'])).

thf('20',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( sk_C_1 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['9','19'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('21',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X7 @ X8 )
      | ~ ( r1_tarski @ X8 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('22',plain,(
    ~ ( r1_tarski @ ( sk_C_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('23',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('24',plain,(
    m2_orders_2 @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A @ sk_B ),
    inference(clc,[status(thm)],['7','8'])).

thf('25',plain,(
    m1_orders_1 @ sk_B @ ( k1_orders_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d17_orders_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( C
                = ( k4_orders_2 @ A @ B ) )
            <=> ! [D: $i] :
                  ( ( r2_hidden @ D @ C )
                <=> ( m2_orders_2 @ D @ A @ B ) ) ) ) ) )).

thf('26',plain,(
    ! [X9: $i,X10: $i,X11: $i,X12: $i] :
      ( ~ ( m1_orders_1 @ X9 @ ( k1_orders_1 @ ( u1_struct_0 @ X10 ) ) )
      | ( X11
       != ( k4_orders_2 @ X10 @ X9 ) )
      | ( r2_hidden @ X12 @ X11 )
      | ~ ( m2_orders_2 @ X12 @ X10 @ X9 )
      | ~ ( l1_orders_2 @ X10 )
      | ~ ( v5_orders_2 @ X10 )
      | ~ ( v4_orders_2 @ X10 )
      | ~ ( v3_orders_2 @ X10 )
      | ( v2_struct_0 @ X10 ) ) ),
    inference(cnf,[status(esa)],[d17_orders_2])).

thf('27',plain,(
    ! [X9: $i,X10: $i,X12: $i] :
      ( ( v2_struct_0 @ X10 )
      | ~ ( v3_orders_2 @ X10 )
      | ~ ( v4_orders_2 @ X10 )
      | ~ ( v5_orders_2 @ X10 )
      | ~ ( l1_orders_2 @ X10 )
      | ~ ( m2_orders_2 @ X12 @ X10 @ X9 )
      | ( r2_hidden @ X12 @ ( k4_orders_2 @ X10 @ X9 ) )
      | ~ ( m1_orders_1 @ X9 @ ( k1_orders_1 @ ( u1_struct_0 @ X10 ) ) ) ) ),
    inference(simplify,[status(thm)],['26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k4_orders_2 @ sk_A @ sk_B ) )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_B )
      | ~ ( l1_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['25','27'])).

thf('29',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k4_orders_2 @ sk_A @ sk_B ) )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_B )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['28','29','30','31','32'])).

thf('34',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,(
    ! [X0: $i] :
      ( ~ ( m2_orders_2 @ X0 @ sk_A @ sk_B )
      | ( r2_hidden @ X0 @ ( k4_orders_2 @ sk_A @ sk_B ) ) ) ),
    inference(clc,[status(thm)],['33','34'])).

thf('36',plain,(
    r2_hidden @ ( sk_C_1 @ sk_B @ sk_A ) @ ( k4_orders_2 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['24','35'])).

thf(l49_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ) )).

thf('37',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ ( k3_tarski @ X6 ) )
      | ~ ( r2_hidden @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[l49_zfmisc_1])).

thf('38',plain,(
    r1_tarski @ ( sk_C_1 @ sk_B @ sk_A ) @ ( k3_tarski @ ( k4_orders_2 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,
    ( ( k3_tarski @ ( k4_orders_2 @ sk_A @ sk_B ) )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    r1_tarski @ ( sk_C_1 @ sk_B @ sk_A ) @ k1_xboole_0 ),
    inference(demod,[status(thm)],['38','39'])).

thf('41',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ ( sk_C_1 @ sk_B @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( sk_C_1 @ sk_B @ sk_A ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ ( sk_C_1 @ sk_B @ sk_A ) ) @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['23','42'])).

thf('44',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X7 @ X8 )
      | ~ ( r1_tarski @ X8 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('45',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( sk_C_1 @ sk_B @ sk_A ) @ X0 )
      | ~ ( r1_tarski @ k1_xboole_0 @ ( sk_C @ X0 @ ( sk_C_1 @ sk_B @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('46',plain,(
    ! [X4: $i] :
      ( r1_tarski @ k1_xboole_0 @ X4 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('47',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( sk_C_1 @ sk_B @ sk_A ) @ X0 ) ),
    inference(demod,[status(thm)],['45','46'])).

thf('48',plain,(
    $false ),
    inference(demod,[status(thm)],['22','47'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.PVsLYcmSli
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:36:26 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.50  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.50  % Solved by: fo/fo7.sh
% 0.21/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.50  % done 63 iterations in 0.044s
% 0.21/0.50  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.50  % SZS output start Refutation
% 0.21/0.50  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.21/0.50  thf(k4_orders_2_type, type, k4_orders_2: $i > $i > $i).
% 0.21/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.50  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.50  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 0.21/0.50  thf(m2_orders_2_type, type, m2_orders_2: $i > $i > $i > $o).
% 0.21/0.50  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.50  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.21/0.50  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.21/0.50  thf(v5_orders_2_type, type, v5_orders_2: $i > $o).
% 0.21/0.50  thf(m1_orders_1_type, type, m1_orders_1: $i > $i > $o).
% 0.21/0.50  thf(l1_orders_2_type, type, l1_orders_2: $i > $o).
% 0.21/0.50  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.21/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.50  thf(v4_orders_2_type, type, v4_orders_2: $i > $o).
% 0.21/0.50  thf(v3_orders_2_type, type, v3_orders_2: $i > $o).
% 0.21/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.50  thf(k1_orders_1_type, type, k1_orders_1: $i > $i).
% 0.21/0.50  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.21/0.50  thf(t87_orders_2, conjecture,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.21/0.50         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.50           ( ( k3_tarski @ ( k4_orders_2 @ A @ B ) ) != ( k1_xboole_0 ) ) ) ) ))).
% 0.21/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.50    (~( ![A:$i]:
% 0.21/0.50        ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.21/0.50            ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.21/0.50          ( ![B:$i]:
% 0.21/0.50            ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.50              ( ( k3_tarski @ ( k4_orders_2 @ A @ B ) ) != ( k1_xboole_0 ) ) ) ) ) )),
% 0.21/0.50    inference('cnf.neg', [status(esa)], [t87_orders_2])).
% 0.21/0.50  thf('0', plain,
% 0.21/0.50      ((m1_orders_1 @ sk_B @ (k1_orders_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(existence_m2_orders_2, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.21/0.50         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) & 
% 0.21/0.50         ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.21/0.50       ( ?[C:$i]: ( m2_orders_2 @ C @ A @ B ) ) ))).
% 0.21/0.50  thf('1', plain,
% 0.21/0.50      (![X15 : $i, X16 : $i]:
% 0.21/0.50         (~ (l1_orders_2 @ X15)
% 0.21/0.50          | ~ (v5_orders_2 @ X15)
% 0.21/0.50          | ~ (v4_orders_2 @ X15)
% 0.21/0.50          | ~ (v3_orders_2 @ X15)
% 0.21/0.50          | (v2_struct_0 @ X15)
% 0.21/0.50          | ~ (m1_orders_1 @ X16 @ (k1_orders_1 @ (u1_struct_0 @ X15)))
% 0.21/0.50          | (m2_orders_2 @ (sk_C_1 @ X16 @ X15) @ X15 @ X16))),
% 0.21/0.50      inference('cnf', [status(esa)], [existence_m2_orders_2])).
% 0.21/0.50  thf('2', plain,
% 0.21/0.50      (((m2_orders_2 @ (sk_C_1 @ sk_B @ sk_A) @ sk_A @ sk_B)
% 0.21/0.50        | (v2_struct_0 @ sk_A)
% 0.21/0.50        | ~ (v3_orders_2 @ sk_A)
% 0.21/0.50        | ~ (v4_orders_2 @ sk_A)
% 0.21/0.50        | ~ (v5_orders_2 @ sk_A)
% 0.21/0.50        | ~ (l1_orders_2 @ sk_A))),
% 0.21/0.50      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.50  thf('3', plain, ((v3_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('4', plain, ((v4_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('5', plain, ((v5_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('6', plain, ((l1_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('7', plain,
% 0.21/0.50      (((m2_orders_2 @ (sk_C_1 @ sk_B @ sk_A) @ sk_A @ sk_B)
% 0.21/0.50        | (v2_struct_0 @ sk_A))),
% 0.21/0.50      inference('demod', [status(thm)], ['2', '3', '4', '5', '6'])).
% 0.21/0.50  thf('8', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('9', plain, ((m2_orders_2 @ (sk_C_1 @ sk_B @ sk_A) @ sk_A @ sk_B)),
% 0.21/0.50      inference('clc', [status(thm)], ['7', '8'])).
% 0.21/0.50  thf('10', plain,
% 0.21/0.50      ((m1_orders_1 @ sk_B @ (k1_orders_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(t79_orders_2, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.21/0.50         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.50           ( ![C:$i]:
% 0.21/0.50             ( ( m2_orders_2 @ C @ A @ B ) =>
% 0.21/0.50               ( r2_hidden @ ( k1_funct_1 @ B @ ( u1_struct_0 @ A ) ) @ C ) ) ) ) ) ))).
% 0.21/0.50  thf('11', plain,
% 0.21/0.50      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.21/0.50         (~ (m1_orders_1 @ X17 @ (k1_orders_1 @ (u1_struct_0 @ X18)))
% 0.21/0.50          | (r2_hidden @ (k1_funct_1 @ X17 @ (u1_struct_0 @ X18)) @ X19)
% 0.21/0.50          | ~ (m2_orders_2 @ X19 @ X18 @ X17)
% 0.21/0.50          | ~ (l1_orders_2 @ X18)
% 0.21/0.50          | ~ (v5_orders_2 @ X18)
% 0.21/0.50          | ~ (v4_orders_2 @ X18)
% 0.21/0.50          | ~ (v3_orders_2 @ X18)
% 0.21/0.50          | (v2_struct_0 @ X18))),
% 0.21/0.50      inference('cnf', [status(esa)], [t79_orders_2])).
% 0.21/0.50  thf('12', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_A)
% 0.21/0.50          | ~ (v3_orders_2 @ sk_A)
% 0.21/0.50          | ~ (v4_orders_2 @ sk_A)
% 0.21/0.50          | ~ (v5_orders_2 @ sk_A)
% 0.21/0.50          | ~ (l1_orders_2 @ sk_A)
% 0.21/0.50          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_B)
% 0.21/0.50          | (r2_hidden @ (k1_funct_1 @ sk_B @ (u1_struct_0 @ sk_A)) @ X0))),
% 0.21/0.50      inference('sup-', [status(thm)], ['10', '11'])).
% 0.21/0.50  thf('13', plain, ((v3_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('14', plain, ((v4_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('15', plain, ((v5_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('16', plain, ((l1_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('17', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_A)
% 0.21/0.50          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_B)
% 0.21/0.50          | (r2_hidden @ (k1_funct_1 @ sk_B @ (u1_struct_0 @ sk_A)) @ X0))),
% 0.21/0.50      inference('demod', [status(thm)], ['12', '13', '14', '15', '16'])).
% 0.21/0.50  thf('18', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('19', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((r2_hidden @ (k1_funct_1 @ sk_B @ (u1_struct_0 @ sk_A)) @ X0)
% 0.21/0.50          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_B))),
% 0.21/0.50      inference('clc', [status(thm)], ['17', '18'])).
% 0.21/0.50  thf('20', plain,
% 0.21/0.50      ((r2_hidden @ (k1_funct_1 @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.21/0.50        (sk_C_1 @ sk_B @ sk_A))),
% 0.21/0.50      inference('sup-', [status(thm)], ['9', '19'])).
% 0.21/0.50  thf(t7_ordinal1, axiom,
% 0.21/0.50    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.21/0.50  thf('21', plain,
% 0.21/0.50      (![X7 : $i, X8 : $i]: (~ (r2_hidden @ X7 @ X8) | ~ (r1_tarski @ X8 @ X7))),
% 0.21/0.50      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.21/0.50  thf('22', plain,
% 0.21/0.50      (~ (r1_tarski @ (sk_C_1 @ sk_B @ sk_A) @ 
% 0.21/0.50          (k1_funct_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['20', '21'])).
% 0.21/0.50  thf(d3_tarski, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( r1_tarski @ A @ B ) <=>
% 0.21/0.50       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.21/0.50  thf('23', plain,
% 0.21/0.50      (![X1 : $i, X3 : $i]:
% 0.21/0.50         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.21/0.50      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.50  thf('24', plain, ((m2_orders_2 @ (sk_C_1 @ sk_B @ sk_A) @ sk_A @ sk_B)),
% 0.21/0.50      inference('clc', [status(thm)], ['7', '8'])).
% 0.21/0.50  thf('25', plain,
% 0.21/0.50      ((m1_orders_1 @ sk_B @ (k1_orders_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(d17_orders_2, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.21/0.50         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.50           ( ![C:$i]:
% 0.21/0.50             ( ( ( C ) = ( k4_orders_2 @ A @ B ) ) <=>
% 0.21/0.50               ( ![D:$i]:
% 0.21/0.50                 ( ( r2_hidden @ D @ C ) <=> ( m2_orders_2 @ D @ A @ B ) ) ) ) ) ) ) ))).
% 0.21/0.50  thf('26', plain,
% 0.21/0.50      (![X9 : $i, X10 : $i, X11 : $i, X12 : $i]:
% 0.21/0.50         (~ (m1_orders_1 @ X9 @ (k1_orders_1 @ (u1_struct_0 @ X10)))
% 0.21/0.50          | ((X11) != (k4_orders_2 @ X10 @ X9))
% 0.21/0.50          | (r2_hidden @ X12 @ X11)
% 0.21/0.50          | ~ (m2_orders_2 @ X12 @ X10 @ X9)
% 0.21/0.50          | ~ (l1_orders_2 @ X10)
% 0.21/0.50          | ~ (v5_orders_2 @ X10)
% 0.21/0.50          | ~ (v4_orders_2 @ X10)
% 0.21/0.50          | ~ (v3_orders_2 @ X10)
% 0.21/0.50          | (v2_struct_0 @ X10))),
% 0.21/0.50      inference('cnf', [status(esa)], [d17_orders_2])).
% 0.21/0.50  thf('27', plain,
% 0.21/0.50      (![X9 : $i, X10 : $i, X12 : $i]:
% 0.21/0.50         ((v2_struct_0 @ X10)
% 0.21/0.50          | ~ (v3_orders_2 @ X10)
% 0.21/0.50          | ~ (v4_orders_2 @ X10)
% 0.21/0.50          | ~ (v5_orders_2 @ X10)
% 0.21/0.50          | ~ (l1_orders_2 @ X10)
% 0.21/0.50          | ~ (m2_orders_2 @ X12 @ X10 @ X9)
% 0.21/0.50          | (r2_hidden @ X12 @ (k4_orders_2 @ X10 @ X9))
% 0.21/0.50          | ~ (m1_orders_1 @ X9 @ (k1_orders_1 @ (u1_struct_0 @ X10))))),
% 0.21/0.50      inference('simplify', [status(thm)], ['26'])).
% 0.21/0.50  thf('28', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((r2_hidden @ X0 @ (k4_orders_2 @ sk_A @ sk_B))
% 0.21/0.50          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_B)
% 0.21/0.50          | ~ (l1_orders_2 @ sk_A)
% 0.21/0.50          | ~ (v5_orders_2 @ sk_A)
% 0.21/0.50          | ~ (v4_orders_2 @ sk_A)
% 0.21/0.50          | ~ (v3_orders_2 @ sk_A)
% 0.21/0.50          | (v2_struct_0 @ sk_A))),
% 0.21/0.50      inference('sup-', [status(thm)], ['25', '27'])).
% 0.21/0.50  thf('29', plain, ((l1_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('30', plain, ((v5_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('31', plain, ((v4_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('32', plain, ((v3_orders_2 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('33', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((r2_hidden @ X0 @ (k4_orders_2 @ sk_A @ sk_B))
% 0.21/0.50          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_B)
% 0.21/0.50          | (v2_struct_0 @ sk_A))),
% 0.21/0.50      inference('demod', [status(thm)], ['28', '29', '30', '31', '32'])).
% 0.21/0.50  thf('34', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('35', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         (~ (m2_orders_2 @ X0 @ sk_A @ sk_B)
% 0.21/0.50          | (r2_hidden @ X0 @ (k4_orders_2 @ sk_A @ sk_B)))),
% 0.21/0.50      inference('clc', [status(thm)], ['33', '34'])).
% 0.21/0.50  thf('36', plain,
% 0.21/0.50      ((r2_hidden @ (sk_C_1 @ sk_B @ sk_A) @ (k4_orders_2 @ sk_A @ sk_B))),
% 0.21/0.50      inference('sup-', [status(thm)], ['24', '35'])).
% 0.21/0.50  thf(l49_zfmisc_1, axiom,
% 0.21/0.50    (![A:$i,B:$i]:
% 0.21/0.50     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ))).
% 0.21/0.50  thf('37', plain,
% 0.21/0.50      (![X5 : $i, X6 : $i]:
% 0.21/0.50         ((r1_tarski @ X5 @ (k3_tarski @ X6)) | ~ (r2_hidden @ X5 @ X6))),
% 0.21/0.50      inference('cnf', [status(esa)], [l49_zfmisc_1])).
% 0.21/0.50  thf('38', plain,
% 0.21/0.50      ((r1_tarski @ (sk_C_1 @ sk_B @ sk_A) @ 
% 0.21/0.50        (k3_tarski @ (k4_orders_2 @ sk_A @ sk_B)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['36', '37'])).
% 0.21/0.50  thf('39', plain,
% 0.21/0.50      (((k3_tarski @ (k4_orders_2 @ sk_A @ sk_B)) = (k1_xboole_0))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('40', plain, ((r1_tarski @ (sk_C_1 @ sk_B @ sk_A) @ k1_xboole_0)),
% 0.21/0.50      inference('demod', [status(thm)], ['38', '39'])).
% 0.21/0.50  thf('41', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.50         (~ (r2_hidden @ X0 @ X1)
% 0.21/0.50          | (r2_hidden @ X0 @ X2)
% 0.21/0.50          | ~ (r1_tarski @ X1 @ X2))),
% 0.21/0.50      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.50  thf('42', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((r2_hidden @ X0 @ k1_xboole_0)
% 0.21/0.50          | ~ (r2_hidden @ X0 @ (sk_C_1 @ sk_B @ sk_A)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['40', '41'])).
% 0.21/0.50  thf('43', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((r1_tarski @ (sk_C_1 @ sk_B @ sk_A) @ X0)
% 0.21/0.50          | (r2_hidden @ (sk_C @ X0 @ (sk_C_1 @ sk_B @ sk_A)) @ k1_xboole_0))),
% 0.21/0.50      inference('sup-', [status(thm)], ['23', '42'])).
% 0.21/0.50  thf('44', plain,
% 0.21/0.50      (![X7 : $i, X8 : $i]: (~ (r2_hidden @ X7 @ X8) | ~ (r1_tarski @ X8 @ X7))),
% 0.21/0.50      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.21/0.50  thf('45', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((r1_tarski @ (sk_C_1 @ sk_B @ sk_A) @ X0)
% 0.21/0.50          | ~ (r1_tarski @ k1_xboole_0 @ (sk_C @ X0 @ (sk_C_1 @ sk_B @ sk_A))))),
% 0.21/0.50      inference('sup-', [status(thm)], ['43', '44'])).
% 0.21/0.50  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.21/0.50  thf('46', plain, (![X4 : $i]: (r1_tarski @ k1_xboole_0 @ X4)),
% 0.21/0.50      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.21/0.50  thf('47', plain, (![X0 : $i]: (r1_tarski @ (sk_C_1 @ sk_B @ sk_A) @ X0)),
% 0.21/0.50      inference('demod', [status(thm)], ['45', '46'])).
% 0.21/0.50  thf('48', plain, ($false), inference('demod', [status(thm)], ['22', '47'])).
% 0.21/0.50  
% 0.21/0.50  % SZS output end Refutation
% 0.21/0.50  
% 0.21/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
