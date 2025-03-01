%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ie4VUcND9Y

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:11:47 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   80 ( 111 expanded)
%              Number of leaves         :   28 (  45 expanded)
%              Depth                    :   14
%              Number of atoms          :  412 ( 743 expanded)
%              Number of equality atoms :   34 (  42 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_orders_2_type,type,(
    v1_orders_2: $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(l1_struct_0_type,type,(
    l1_struct_0: $i > $o )).

thf(u1_orders_2_type,type,(
    u1_orders_2: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k6_domain_1_type,type,(
    k6_domain_1: $i > $i > $i )).

thf(v1_zfmisc_1_type,type,(
    v1_zfmisc_1: $i > $o )).

thf(k2_yellow_1_type,type,(
    k2_yellow_1: $i > $i )).

thf(l1_orders_2_type,type,(
    l1_orders_2: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_yellow_1_type,type,(
    k1_yellow_1: $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v1_subset_1_type,type,(
    v1_subset_1: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k2_struct_0_type,type,(
    k2_struct_0: $i > $i )).

thf(t6_tex_2,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ A )
         => ~ ( ( v1_subset_1 @ ( k6_domain_1 @ A @ B ) @ A )
              & ( v1_zfmisc_1 @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ A )
           => ~ ( ( v1_subset_1 @ ( k6_domain_1 @ A @ B ) @ A )
                & ( v1_zfmisc_1 @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t6_tex_2])).

thf('0',plain,(
    v1_subset_1 @ ( k6_domain_1 @ sk_A @ sk_B_1 ) @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_B_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k6_domain_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( m1_subset_1 @ B @ A ) )
     => ( ( k6_domain_1 @ A @ B )
        = ( k1_tarski @ B ) ) ) )).

thf('2',plain,(
    ! [X11: $i,X12: $i] :
      ( ( v1_xboole_0 @ X11 )
      | ~ ( m1_subset_1 @ X12 @ X11 )
      | ( ( k6_domain_1 @ X11 @ X12 )
        = ( k1_tarski @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_domain_1])).

thf('3',plain,
    ( ( ( k6_domain_1 @ sk_A @ sk_B_1 )
      = ( k1_tarski @ sk_B_1 ) )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ( k6_domain_1 @ sk_A @ sk_B_1 )
    = ( k1_tarski @ sk_B_1 ) ),
    inference(clc,[status(thm)],['3','4'])).

thf('6',plain,(
    v1_subset_1 @ ( k1_tarski @ sk_B_1 ) @ sk_A ),
    inference(demod,[status(thm)],['0','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_B_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('8',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r2_hidden @ X6 @ X7 )
      | ( v1_xboole_0 @ X7 )
      | ~ ( m1_subset_1 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('9',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( r2_hidden @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    r2_hidden @ sk_B_1 @ sk_A ),
    inference(clc,[status(thm)],['9','10'])).

thf(d1_tex_2,axiom,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ( ( v1_zfmisc_1 @ A )
      <=> ? [B: $i] :
            ( ( A
              = ( k6_domain_1 @ A @ B ) )
            & ( m1_subset_1 @ B @ A ) ) ) ) )).

thf('12',plain,(
    ! [X17: $i] :
      ( ~ ( v1_zfmisc_1 @ X17 )
      | ( X17
        = ( k6_domain_1 @ X17 @ ( sk_B @ X17 ) ) )
      | ( v1_xboole_0 @ X17 ) ) ),
    inference(cnf,[status(esa)],[d1_tex_2])).

thf('13',plain,(
    ! [X17: $i] :
      ( ~ ( v1_zfmisc_1 @ X17 )
      | ( m1_subset_1 @ ( sk_B @ X17 ) @ X17 )
      | ( v1_xboole_0 @ X17 ) ) ),
    inference(cnf,[status(esa)],[d1_tex_2])).

thf('14',plain,(
    ! [X11: $i,X12: $i] :
      ( ( v1_xboole_0 @ X11 )
      | ~ ( m1_subset_1 @ X12 @ X11 )
      | ( ( k6_domain_1 @ X11 @ X12 )
        = ( k1_tarski @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_domain_1])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ~ ( v1_zfmisc_1 @ X0 )
      | ( ( k6_domain_1 @ X0 @ ( sk_B @ X0 ) )
        = ( k1_tarski @ ( sk_B @ X0 ) ) )
      | ( v1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( ( k6_domain_1 @ X0 @ ( sk_B @ X0 ) )
        = ( k1_tarski @ ( sk_B @ X0 ) ) )
      | ~ ( v1_zfmisc_1 @ X0 )
      | ( v1_xboole_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( X0
        = ( k1_tarski @ ( sk_B @ X0 ) ) )
      | ( v1_xboole_0 @ X0 )
      | ~ ( v1_zfmisc_1 @ X0 )
      | ( v1_xboole_0 @ X0 )
      | ~ ( v1_zfmisc_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['12','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( v1_zfmisc_1 @ X0 )
      | ( v1_xboole_0 @ X0 )
      | ( X0
        = ( k1_tarski @ ( sk_B @ X0 ) ) ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf(d1_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_tarski @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( C = A ) ) ) )).

thf('19',plain,(
    ! [X0: $i,X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ X3 @ X2 )
      | ( X3 = X0 )
      | ( X2
       != ( k1_tarski @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d1_tarski])).

thf('20',plain,(
    ! [X0: $i,X3: $i] :
      ( ( X3 = X0 )
      | ~ ( r2_hidden @ X3 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ X0 )
      | ( v1_xboole_0 @ X0 )
      | ~ ( v1_zfmisc_1 @ X0 )
      | ( X1
        = ( sk_B @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['18','20'])).

thf('22',plain,
    ( ( sk_B_1
      = ( sk_B @ sk_A ) )
    | ~ ( v1_zfmisc_1 @ sk_A )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['11','21'])).

thf('23',plain,(
    v1_zfmisc_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,
    ( ( sk_B_1
      = ( sk_B @ sk_A ) )
    | ( v1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,
    ( sk_B_1
    = ( sk_B @ sk_A ) ),
    inference(clc,[status(thm)],['24','25'])).

thf('27',plain,(
    ! [X17: $i] :
      ( ~ ( v1_zfmisc_1 @ X17 )
      | ( X17
        = ( k6_domain_1 @ X17 @ ( sk_B @ X17 ) ) )
      | ( v1_xboole_0 @ X17 ) ) ),
    inference(cnf,[status(esa)],[d1_tex_2])).

thf('28',plain,
    ( ( sk_A
      = ( k6_domain_1 @ sk_A @ sk_B_1 ) )
    | ( v1_xboole_0 @ sk_A )
    | ~ ( v1_zfmisc_1 @ sk_A ) ),
    inference('sup+',[status(thm)],['26','27'])).

thf('29',plain,
    ( ( k6_domain_1 @ sk_A @ sk_B_1 )
    = ( k1_tarski @ sk_B_1 ) ),
    inference(clc,[status(thm)],['3','4'])).

thf('30',plain,(
    v1_zfmisc_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,
    ( ( sk_A
      = ( k1_tarski @ sk_B_1 ) )
    | ( v1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['28','29','30'])).

thf('32',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,
    ( sk_A
    = ( k1_tarski @ sk_B_1 ) ),
    inference(clc,[status(thm)],['31','32'])).

thf('34',plain,(
    v1_subset_1 @ sk_A @ sk_A ),
    inference(demod,[status(thm)],['6','33'])).

thf(dt_l1_orders_2,axiom,(
    ! [A: $i] :
      ( ( l1_orders_2 @ A )
     => ( l1_struct_0 @ A ) ) )).

thf('35',plain,(
    ! [X10: $i] :
      ( ( l1_struct_0 @ X10 )
      | ~ ( l1_orders_2 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_l1_orders_2])).

thf(t1_yellow_1,axiom,(
    ! [A: $i] :
      ( ( ( u1_orders_2 @ ( k2_yellow_1 @ A ) )
        = ( k1_yellow_1 @ A ) )
      & ( ( u1_struct_0 @ ( k2_yellow_1 @ A ) )
        = A ) ) )).

thf('36',plain,(
    ! [X15: $i] :
      ( ( u1_struct_0 @ ( k2_yellow_1 @ X15 ) )
      = X15 ) ),
    inference(cnf,[status(esa)],[t1_yellow_1])).

thf(fc12_struct_0,axiom,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ~ ( v1_subset_1 @ ( k2_struct_0 @ A ) @ ( u1_struct_0 @ A ) ) ) )).

thf('37',plain,(
    ! [X9: $i] :
      ( ~ ( v1_subset_1 @ ( k2_struct_0 @ X9 ) @ ( u1_struct_0 @ X9 ) )
      | ~ ( l1_struct_0 @ X9 ) ) ),
    inference(cnf,[status(esa)],[fc12_struct_0])).

thf('38',plain,(
    ! [X0: $i] :
      ( ~ ( v1_subset_1 @ ( k2_struct_0 @ ( k2_yellow_1 @ X0 ) ) @ X0 )
      | ~ ( l1_struct_0 @ ( k2_yellow_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X10: $i] :
      ( ( l1_struct_0 @ X10 )
      | ~ ( l1_orders_2 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_l1_orders_2])).

thf(d3_struct_0,axiom,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ( ( k2_struct_0 @ A )
        = ( u1_struct_0 @ A ) ) ) )).

thf('40',plain,(
    ! [X8: $i] :
      ( ( ( k2_struct_0 @ X8 )
        = ( u1_struct_0 @ X8 ) )
      | ~ ( l1_struct_0 @ X8 ) ) ),
    inference(cnf,[status(esa)],[d3_struct_0])).

thf('41',plain,(
    ! [X15: $i] :
      ( ( u1_struct_0 @ ( k2_yellow_1 @ X15 ) )
      = X15 ) ),
    inference(cnf,[status(esa)],[t1_yellow_1])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( ( k2_struct_0 @ ( k2_yellow_1 @ X0 ) )
        = X0 )
      | ~ ( l1_struct_0 @ ( k2_yellow_1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ~ ( l1_orders_2 @ ( k2_yellow_1 @ X0 ) )
      | ( ( k2_struct_0 @ ( k2_yellow_1 @ X0 ) )
        = X0 ) ) ),
    inference('sup-',[status(thm)],['39','42'])).

thf(dt_k2_yellow_1,axiom,(
    ! [A: $i] :
      ( ( l1_orders_2 @ ( k2_yellow_1 @ A ) )
      & ( v1_orders_2 @ ( k2_yellow_1 @ A ) ) ) )).

thf('44',plain,(
    ! [X14: $i] :
      ( l1_orders_2 @ ( k2_yellow_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_yellow_1])).

thf('45',plain,(
    ! [X0: $i] :
      ( ( k2_struct_0 @ ( k2_yellow_1 @ X0 ) )
      = X0 ) ),
    inference(demod,[status(thm)],['43','44'])).

thf('46',plain,(
    ! [X0: $i] :
      ( ~ ( v1_subset_1 @ X0 @ X0 )
      | ~ ( l1_struct_0 @ ( k2_yellow_1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['38','45'])).

thf('47',plain,(
    ! [X0: $i] :
      ( ~ ( l1_orders_2 @ ( k2_yellow_1 @ X0 ) )
      | ~ ( v1_subset_1 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['35','46'])).

thf('48',plain,(
    ! [X14: $i] :
      ( l1_orders_2 @ ( k2_yellow_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_yellow_1])).

thf('49',plain,(
    ! [X0: $i] :
      ~ ( v1_subset_1 @ X0 @ X0 ) ),
    inference(demod,[status(thm)],['47','48'])).

thf('50',plain,(
    $false ),
    inference('sup-',[status(thm)],['34','49'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ie4VUcND9Y
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:22:46 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.20/0.35  % Running in FO mode
% 0.20/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.48  % Solved by: fo/fo7.sh
% 0.20/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.48  % done 59 iterations in 0.032s
% 0.20/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.48  % SZS output start Refutation
% 0.20/0.48  thf(v1_orders_2_type, type, v1_orders_2: $i > $o).
% 0.20/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.48  thf(l1_struct_0_type, type, l1_struct_0: $i > $o).
% 0.20/0.48  thf(u1_orders_2_type, type, u1_orders_2: $i > $i).
% 0.20/0.48  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.48  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.48  thf(k6_domain_1_type, type, k6_domain_1: $i > $i > $i).
% 0.20/0.48  thf(v1_zfmisc_1_type, type, v1_zfmisc_1: $i > $o).
% 0.20/0.48  thf(k2_yellow_1_type, type, k2_yellow_1: $i > $i).
% 0.20/0.48  thf(l1_orders_2_type, type, l1_orders_2: $i > $o).
% 0.20/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.48  thf(k1_yellow_1_type, type, k1_yellow_1: $i > $i).
% 0.20/0.48  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.48  thf(v1_subset_1_type, type, v1_subset_1: $i > $i > $o).
% 0.20/0.48  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.48  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.20/0.48  thf(k2_struct_0_type, type, k2_struct_0: $i > $i).
% 0.20/0.48  thf(t6_tex_2, conjecture,
% 0.20/0.48    (![A:$i]:
% 0.20/0.48     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.48       ( ![B:$i]:
% 0.20/0.48         ( ( m1_subset_1 @ B @ A ) =>
% 0.20/0.48           ( ~( ( v1_subset_1 @ ( k6_domain_1 @ A @ B ) @ A ) & 
% 0.20/0.48                ( v1_zfmisc_1 @ A ) ) ) ) ) ))).
% 0.20/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.48    (~( ![A:$i]:
% 0.20/0.48        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.48          ( ![B:$i]:
% 0.20/0.48            ( ( m1_subset_1 @ B @ A ) =>
% 0.20/0.48              ( ~( ( v1_subset_1 @ ( k6_domain_1 @ A @ B ) @ A ) & 
% 0.20/0.48                   ( v1_zfmisc_1 @ A ) ) ) ) ) ) )),
% 0.20/0.48    inference('cnf.neg', [status(esa)], [t6_tex_2])).
% 0.20/0.48  thf('0', plain, ((v1_subset_1 @ (k6_domain_1 @ sk_A @ sk_B_1) @ sk_A)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('1', plain, ((m1_subset_1 @ sk_B_1 @ sk_A)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(redefinition_k6_domain_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( ( ~( v1_xboole_0 @ A ) ) & ( m1_subset_1 @ B @ A ) ) =>
% 0.20/0.48       ( ( k6_domain_1 @ A @ B ) = ( k1_tarski @ B ) ) ))).
% 0.20/0.48  thf('2', plain,
% 0.20/0.48      (![X11 : $i, X12 : $i]:
% 0.20/0.48         ((v1_xboole_0 @ X11)
% 0.20/0.48          | ~ (m1_subset_1 @ X12 @ X11)
% 0.20/0.48          | ((k6_domain_1 @ X11 @ X12) = (k1_tarski @ X12)))),
% 0.20/0.48      inference('cnf', [status(esa)], [redefinition_k6_domain_1])).
% 0.20/0.48  thf('3', plain,
% 0.20/0.48      ((((k6_domain_1 @ sk_A @ sk_B_1) = (k1_tarski @ sk_B_1))
% 0.20/0.48        | (v1_xboole_0 @ sk_A))),
% 0.20/0.48      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.48  thf('4', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('5', plain, (((k6_domain_1 @ sk_A @ sk_B_1) = (k1_tarski @ sk_B_1))),
% 0.20/0.48      inference('clc', [status(thm)], ['3', '4'])).
% 0.20/0.48  thf('6', plain, ((v1_subset_1 @ (k1_tarski @ sk_B_1) @ sk_A)),
% 0.20/0.48      inference('demod', [status(thm)], ['0', '5'])).
% 0.20/0.48  thf('7', plain, ((m1_subset_1 @ sk_B_1 @ sk_A)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(t2_subset, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( m1_subset_1 @ A @ B ) =>
% 0.20/0.48       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.20/0.48  thf('8', plain,
% 0.20/0.48      (![X6 : $i, X7 : $i]:
% 0.20/0.48         ((r2_hidden @ X6 @ X7)
% 0.20/0.48          | (v1_xboole_0 @ X7)
% 0.20/0.48          | ~ (m1_subset_1 @ X6 @ X7))),
% 0.20/0.48      inference('cnf', [status(esa)], [t2_subset])).
% 0.20/0.48  thf('9', plain, (((v1_xboole_0 @ sk_A) | (r2_hidden @ sk_B_1 @ sk_A))),
% 0.20/0.48      inference('sup-', [status(thm)], ['7', '8'])).
% 0.20/0.48  thf('10', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('11', plain, ((r2_hidden @ sk_B_1 @ sk_A)),
% 0.20/0.48      inference('clc', [status(thm)], ['9', '10'])).
% 0.20/0.48  thf(d1_tex_2, axiom,
% 0.20/0.48    (![A:$i]:
% 0.20/0.48     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.48       ( ( v1_zfmisc_1 @ A ) <=>
% 0.20/0.48         ( ?[B:$i]:
% 0.20/0.48           ( ( ( A ) = ( k6_domain_1 @ A @ B ) ) & ( m1_subset_1 @ B @ A ) ) ) ) ))).
% 0.20/0.48  thf('12', plain,
% 0.20/0.48      (![X17 : $i]:
% 0.20/0.48         (~ (v1_zfmisc_1 @ X17)
% 0.20/0.48          | ((X17) = (k6_domain_1 @ X17 @ (sk_B @ X17)))
% 0.20/0.48          | (v1_xboole_0 @ X17))),
% 0.20/0.48      inference('cnf', [status(esa)], [d1_tex_2])).
% 0.20/0.48  thf('13', plain,
% 0.20/0.48      (![X17 : $i]:
% 0.20/0.48         (~ (v1_zfmisc_1 @ X17)
% 0.20/0.48          | (m1_subset_1 @ (sk_B @ X17) @ X17)
% 0.20/0.48          | (v1_xboole_0 @ X17))),
% 0.20/0.48      inference('cnf', [status(esa)], [d1_tex_2])).
% 0.20/0.48  thf('14', plain,
% 0.20/0.48      (![X11 : $i, X12 : $i]:
% 0.20/0.48         ((v1_xboole_0 @ X11)
% 0.20/0.48          | ~ (m1_subset_1 @ X12 @ X11)
% 0.20/0.48          | ((k6_domain_1 @ X11 @ X12) = (k1_tarski @ X12)))),
% 0.20/0.48      inference('cnf', [status(esa)], [redefinition_k6_domain_1])).
% 0.20/0.48  thf('15', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         ((v1_xboole_0 @ X0)
% 0.20/0.48          | ~ (v1_zfmisc_1 @ X0)
% 0.20/0.48          | ((k6_domain_1 @ X0 @ (sk_B @ X0)) = (k1_tarski @ (sk_B @ X0)))
% 0.20/0.48          | (v1_xboole_0 @ X0))),
% 0.20/0.48      inference('sup-', [status(thm)], ['13', '14'])).
% 0.20/0.48  thf('16', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         (((k6_domain_1 @ X0 @ (sk_B @ X0)) = (k1_tarski @ (sk_B @ X0)))
% 0.20/0.48          | ~ (v1_zfmisc_1 @ X0)
% 0.20/0.48          | (v1_xboole_0 @ X0))),
% 0.20/0.48      inference('simplify', [status(thm)], ['15'])).
% 0.20/0.48  thf('17', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         (((X0) = (k1_tarski @ (sk_B @ X0)))
% 0.20/0.48          | (v1_xboole_0 @ X0)
% 0.20/0.48          | ~ (v1_zfmisc_1 @ X0)
% 0.20/0.48          | (v1_xboole_0 @ X0)
% 0.20/0.48          | ~ (v1_zfmisc_1 @ X0))),
% 0.20/0.48      inference('sup+', [status(thm)], ['12', '16'])).
% 0.20/0.48  thf('18', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         (~ (v1_zfmisc_1 @ X0)
% 0.20/0.48          | (v1_xboole_0 @ X0)
% 0.20/0.48          | ((X0) = (k1_tarski @ (sk_B @ X0))))),
% 0.20/0.48      inference('simplify', [status(thm)], ['17'])).
% 0.20/0.48  thf(d1_tarski, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( ( B ) = ( k1_tarski @ A ) ) <=>
% 0.20/0.48       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( ( C ) = ( A ) ) ) ) ))).
% 0.20/0.48  thf('19', plain,
% 0.20/0.48      (![X0 : $i, X2 : $i, X3 : $i]:
% 0.20/0.48         (~ (r2_hidden @ X3 @ X2) | ((X3) = (X0)) | ((X2) != (k1_tarski @ X0)))),
% 0.20/0.48      inference('cnf', [status(esa)], [d1_tarski])).
% 0.20/0.48  thf('20', plain,
% 0.20/0.48      (![X0 : $i, X3 : $i]:
% 0.20/0.48         (((X3) = (X0)) | ~ (r2_hidden @ X3 @ (k1_tarski @ X0)))),
% 0.20/0.48      inference('simplify', [status(thm)], ['19'])).
% 0.20/0.48  thf('21', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (~ (r2_hidden @ X1 @ X0)
% 0.20/0.48          | (v1_xboole_0 @ X0)
% 0.20/0.48          | ~ (v1_zfmisc_1 @ X0)
% 0.20/0.48          | ((X1) = (sk_B @ X0)))),
% 0.20/0.48      inference('sup-', [status(thm)], ['18', '20'])).
% 0.20/0.48  thf('22', plain,
% 0.20/0.48      ((((sk_B_1) = (sk_B @ sk_A))
% 0.20/0.48        | ~ (v1_zfmisc_1 @ sk_A)
% 0.20/0.48        | (v1_xboole_0 @ sk_A))),
% 0.20/0.49      inference('sup-', [status(thm)], ['11', '21'])).
% 0.20/0.49  thf('23', plain, ((v1_zfmisc_1 @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('24', plain, ((((sk_B_1) = (sk_B @ sk_A)) | (v1_xboole_0 @ sk_A))),
% 0.20/0.49      inference('demod', [status(thm)], ['22', '23'])).
% 0.20/0.49  thf('25', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('26', plain, (((sk_B_1) = (sk_B @ sk_A))),
% 0.20/0.49      inference('clc', [status(thm)], ['24', '25'])).
% 0.20/0.49  thf('27', plain,
% 0.20/0.49      (![X17 : $i]:
% 0.20/0.49         (~ (v1_zfmisc_1 @ X17)
% 0.20/0.49          | ((X17) = (k6_domain_1 @ X17 @ (sk_B @ X17)))
% 0.20/0.49          | (v1_xboole_0 @ X17))),
% 0.20/0.49      inference('cnf', [status(esa)], [d1_tex_2])).
% 0.20/0.49  thf('28', plain,
% 0.20/0.49      ((((sk_A) = (k6_domain_1 @ sk_A @ sk_B_1))
% 0.20/0.49        | (v1_xboole_0 @ sk_A)
% 0.20/0.49        | ~ (v1_zfmisc_1 @ sk_A))),
% 0.20/0.49      inference('sup+', [status(thm)], ['26', '27'])).
% 0.20/0.49  thf('29', plain, (((k6_domain_1 @ sk_A @ sk_B_1) = (k1_tarski @ sk_B_1))),
% 0.20/0.49      inference('clc', [status(thm)], ['3', '4'])).
% 0.20/0.49  thf('30', plain, ((v1_zfmisc_1 @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('31', plain, ((((sk_A) = (k1_tarski @ sk_B_1)) | (v1_xboole_0 @ sk_A))),
% 0.20/0.49      inference('demod', [status(thm)], ['28', '29', '30'])).
% 0.20/0.49  thf('32', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('33', plain, (((sk_A) = (k1_tarski @ sk_B_1))),
% 0.20/0.49      inference('clc', [status(thm)], ['31', '32'])).
% 0.20/0.49  thf('34', plain, ((v1_subset_1 @ sk_A @ sk_A)),
% 0.20/0.49      inference('demod', [status(thm)], ['6', '33'])).
% 0.20/0.49  thf(dt_l1_orders_2, axiom,
% 0.20/0.49    (![A:$i]: ( ( l1_orders_2 @ A ) => ( l1_struct_0 @ A ) ))).
% 0.20/0.49  thf('35', plain,
% 0.20/0.49      (![X10 : $i]: ((l1_struct_0 @ X10) | ~ (l1_orders_2 @ X10))),
% 0.20/0.49      inference('cnf', [status(esa)], [dt_l1_orders_2])).
% 0.20/0.49  thf(t1_yellow_1, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( ( u1_orders_2 @ ( k2_yellow_1 @ A ) ) = ( k1_yellow_1 @ A ) ) & 
% 0.20/0.49       ( ( u1_struct_0 @ ( k2_yellow_1 @ A ) ) = ( A ) ) ))).
% 0.20/0.49  thf('36', plain,
% 0.20/0.49      (![X15 : $i]: ((u1_struct_0 @ (k2_yellow_1 @ X15)) = (X15))),
% 0.20/0.49      inference('cnf', [status(esa)], [t1_yellow_1])).
% 0.20/0.49  thf(fc12_struct_0, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( l1_struct_0 @ A ) =>
% 0.20/0.49       ( ~( v1_subset_1 @ ( k2_struct_0 @ A ) @ ( u1_struct_0 @ A ) ) ) ))).
% 0.20/0.49  thf('37', plain,
% 0.20/0.49      (![X9 : $i]:
% 0.20/0.49         (~ (v1_subset_1 @ (k2_struct_0 @ X9) @ (u1_struct_0 @ X9))
% 0.20/0.49          | ~ (l1_struct_0 @ X9))),
% 0.20/0.49      inference('cnf', [status(esa)], [fc12_struct_0])).
% 0.20/0.49  thf('38', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_subset_1 @ (k2_struct_0 @ (k2_yellow_1 @ X0)) @ X0)
% 0.20/0.49          | ~ (l1_struct_0 @ (k2_yellow_1 @ X0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['36', '37'])).
% 0.20/0.49  thf('39', plain,
% 0.20/0.49      (![X10 : $i]: ((l1_struct_0 @ X10) | ~ (l1_orders_2 @ X10))),
% 0.20/0.49      inference('cnf', [status(esa)], [dt_l1_orders_2])).
% 0.20/0.49  thf(d3_struct_0, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( l1_struct_0 @ A ) => ( ( k2_struct_0 @ A ) = ( u1_struct_0 @ A ) ) ))).
% 0.20/0.49  thf('40', plain,
% 0.20/0.49      (![X8 : $i]:
% 0.20/0.49         (((k2_struct_0 @ X8) = (u1_struct_0 @ X8)) | ~ (l1_struct_0 @ X8))),
% 0.20/0.49      inference('cnf', [status(esa)], [d3_struct_0])).
% 0.20/0.49  thf('41', plain,
% 0.20/0.49      (![X15 : $i]: ((u1_struct_0 @ (k2_yellow_1 @ X15)) = (X15))),
% 0.20/0.49      inference('cnf', [status(esa)], [t1_yellow_1])).
% 0.20/0.49  thf('42', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (((k2_struct_0 @ (k2_yellow_1 @ X0)) = (X0))
% 0.20/0.49          | ~ (l1_struct_0 @ (k2_yellow_1 @ X0)))),
% 0.20/0.49      inference('sup+', [status(thm)], ['40', '41'])).
% 0.20/0.49  thf('43', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (l1_orders_2 @ (k2_yellow_1 @ X0))
% 0.20/0.49          | ((k2_struct_0 @ (k2_yellow_1 @ X0)) = (X0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['39', '42'])).
% 0.20/0.49  thf(dt_k2_yellow_1, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( l1_orders_2 @ ( k2_yellow_1 @ A ) ) & 
% 0.20/0.49       ( v1_orders_2 @ ( k2_yellow_1 @ A ) ) ))).
% 0.20/0.49  thf('44', plain, (![X14 : $i]: (l1_orders_2 @ (k2_yellow_1 @ X14))),
% 0.20/0.49      inference('cnf', [status(esa)], [dt_k2_yellow_1])).
% 0.20/0.49  thf('45', plain, (![X0 : $i]: ((k2_struct_0 @ (k2_yellow_1 @ X0)) = (X0))),
% 0.20/0.49      inference('demod', [status(thm)], ['43', '44'])).
% 0.20/0.49  thf('46', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_subset_1 @ X0 @ X0) | ~ (l1_struct_0 @ (k2_yellow_1 @ X0)))),
% 0.20/0.49      inference('demod', [status(thm)], ['38', '45'])).
% 0.20/0.49  thf('47', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (l1_orders_2 @ (k2_yellow_1 @ X0)) | ~ (v1_subset_1 @ X0 @ X0))),
% 0.20/0.49      inference('sup-', [status(thm)], ['35', '46'])).
% 0.20/0.49  thf('48', plain, (![X14 : $i]: (l1_orders_2 @ (k2_yellow_1 @ X14))),
% 0.20/0.49      inference('cnf', [status(esa)], [dt_k2_yellow_1])).
% 0.20/0.49  thf('49', plain, (![X0 : $i]: ~ (v1_subset_1 @ X0 @ X0)),
% 0.20/0.49      inference('demod', [status(thm)], ['47', '48'])).
% 0.20/0.49  thf('50', plain, ($false), inference('sup-', [status(thm)], ['34', '49'])).
% 0.20/0.49  
% 0.20/0.49  % SZS output end Refutation
% 0.20/0.49  
% 0.20/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
