%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4Oc8dIh1Vx

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:14:16 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :  100 ( 178 expanded)
%              Number of leaves         :   31 (  63 expanded)
%              Depth                    :   17
%              Number of atoms          :  808 (2558 expanded)
%              Number of equality atoms :   25 (  37 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v13_waybel_0_type,type,(
    v13_waybel_0: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v1_subset_1_type,type,(
    v1_subset_1: $i > $i > $o )).

thf(v3_orders_2_type,type,(
    v3_orders_2: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(v1_yellow_0_type,type,(
    v1_yellow_0: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(v4_orders_2_type,type,(
    v4_orders_2: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(l1_orders_2_type,type,(
    l1_orders_2: $i > $o )).

thf(v5_orders_2_type,type,(
    v5_orders_2: $i > $o )).

thf(r1_orders_2_type,type,(
    r1_orders_2: $i > $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v2_waybel_0_type,type,(
    v2_waybel_0: $i > $i > $o )).

thf(k3_yellow_0_type,type,(
    k3_yellow_0: $i > $i )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(t8_waybel_7,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( v1_yellow_0 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v1_xboole_0 @ B )
            & ( v2_waybel_0 @ B @ A )
            & ( v13_waybel_0 @ B @ A )
            & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v1_subset_1 @ B @ ( u1_struct_0 @ A ) )
          <=> ~ ( r2_hidden @ ( k3_yellow_0 @ A ) @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v3_orders_2 @ A )
          & ( v4_orders_2 @ A )
          & ( v5_orders_2 @ A )
          & ( v1_yellow_0 @ A )
          & ( l1_orders_2 @ A ) )
       => ! [B: $i] :
            ( ( ~ ( v1_xboole_0 @ B )
              & ( v2_waybel_0 @ B @ A )
              & ( v13_waybel_0 @ B @ A )
              & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
           => ( ( v1_subset_1 @ B @ ( u1_struct_0 @ A ) )
            <=> ~ ( r2_hidden @ ( k3_yellow_0 @ A ) @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t8_waybel_7])).

thf('0',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
    | ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
    | ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(split,[status(esa)],['0'])).

thf(t2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ! [C: $i] :
          ( ( r2_hidden @ C @ A )
        <=> ( r2_hidden @ C @ B ) )
     => ( A = B ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf('3',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( r2_hidden @ C @ B )
         => ( r2_hidden @ C @ A ) ) ) )).

thf('4',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( r2_hidden @ X4 @ X5 )
      | ( r2_hidden @ X4 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[l3_subset_1])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C @ sk_B @ X0 ) @ X0 )
      | ( X0 = sk_B )
      | ( r2_hidden @ ( sk_C @ sk_B @ X0 ) @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['2','5'])).

thf('7',plain,
    ( ( r2_hidden @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) )
    | ( ( u1_struct_0 @ sk_A )
      = sk_B ) ),
    inference(eq_fact,[status(thm)],['6'])).

thf(t1_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( m1_subset_1 @ A @ B ) ) )).

thf('8',plain,(
    ! [X7: $i,X8: $i] :
      ( ( m1_subset_1 @ X7 @ X8 )
      | ~ ( r2_hidden @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('9',plain,
    ( ( ( u1_struct_0 @ sk_A )
      = sk_B )
    | ( m1_subset_1 @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t44_yellow_0,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v5_orders_2 @ A )
        & ( v1_yellow_0 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ( r1_orders_2 @ A @ ( k3_yellow_0 @ A ) @ B ) ) ) )).

thf('10',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X15 @ ( u1_struct_0 @ X16 ) )
      | ( r1_orders_2 @ X16 @ ( k3_yellow_0 @ X16 ) @ X15 )
      | ~ ( l1_orders_2 @ X16 )
      | ~ ( v1_yellow_0 @ X16 )
      | ~ ( v5_orders_2 @ X16 )
      | ( v2_struct_0 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t44_yellow_0])).

thf('11',plain,
    ( ( ( u1_struct_0 @ sk_A )
      = sk_B )
    | ( v2_struct_0 @ sk_A )
    | ~ ( v5_orders_2 @ sk_A )
    | ~ ( v1_yellow_0 @ sk_A )
    | ~ ( l1_orders_2 @ sk_A )
    | ( r1_orders_2 @ sk_A @ ( k3_yellow_0 @ sk_A ) @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    v1_yellow_0 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ( ( u1_struct_0 @ sk_A )
      = sk_B )
    | ( v2_struct_0 @ sk_A )
    | ( r1_orders_2 @ sk_A @ ( k3_yellow_0 @ sk_A ) @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['11','12','13','14'])).

thf('16',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,
    ( ( r1_orders_2 @ sk_A @ ( k3_yellow_0 @ sk_A ) @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) )
    | ( ( u1_struct_0 @ sk_A )
      = sk_B ) ),
    inference(clc,[status(thm)],['15','16'])).

thf('18',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('20',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ ( u1_struct_0 @ sk_A ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X7: $i,X8: $i] :
      ( ( m1_subset_1 @ X7 @ X8 )
      | ~ ( r2_hidden @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('22',plain,
    ( ( m1_subset_1 @ ( k3_yellow_0 @ sk_A ) @ ( u1_struct_0 @ sk_A ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d20_waybel_0,axiom,(
    ! [A: $i] :
      ( ( l1_orders_2 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v13_waybel_0 @ B @ A )
          <=> ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
               => ! [D: $i] :
                    ( ( m1_subset_1 @ D @ ( u1_struct_0 @ A ) )
                   => ( ( ( r2_hidden @ C @ B )
                        & ( r1_orders_2 @ A @ C @ D ) )
                     => ( r2_hidden @ D @ B ) ) ) ) ) ) ) )).

thf('24',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) )
      | ~ ( v13_waybel_0 @ X17 @ X18 )
      | ~ ( m1_subset_1 @ X19 @ ( u1_struct_0 @ X18 ) )
      | ( r2_hidden @ X19 @ X17 )
      | ~ ( r1_orders_2 @ X18 @ X20 @ X19 )
      | ~ ( r2_hidden @ X20 @ X17 )
      | ~ ( m1_subset_1 @ X20 @ ( u1_struct_0 @ X18 ) )
      | ~ ( l1_orders_2 @ X18 ) ) ),
    inference(cnf,[status(esa)],[d20_waybel_0])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( l1_orders_2 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B )
      | ~ ( r1_orders_2 @ sk_A @ X0 @ X1 )
      | ( r2_hidden @ X1 @ sk_B )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( v13_waybel_0 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    v13_waybel_0 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B )
      | ~ ( r1_orders_2 @ sk_A @ X0 @ X1 )
      | ( r2_hidden @ X1 @ sk_B )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('29',plain,
    ( ! [X0: $i] :
        ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
        | ( r2_hidden @ X0 @ sk_B )
        | ~ ( r1_orders_2 @ sk_A @ ( k3_yellow_0 @ sk_A ) @ X0 )
        | ~ ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['22','28'])).

thf('30',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('31',plain,
    ( ! [X0: $i] :
        ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
        | ( r2_hidden @ X0 @ sk_B )
        | ~ ( r1_orders_2 @ sk_A @ ( k3_yellow_0 @ sk_A ) @ X0 ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,
    ( ( ( ( u1_struct_0 @ sk_A )
        = sk_B )
      | ( r2_hidden @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ sk_B )
      | ~ ( m1_subset_1 @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['17','31'])).

thf('33',plain,
    ( ( ( u1_struct_0 @ sk_A )
      = sk_B )
    | ( m1_subset_1 @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('34',plain,
    ( ( ( r2_hidden @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ sk_B )
      | ( ( u1_struct_0 @ sk_A )
        = sk_B ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(clc,[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X0 )
      | ~ ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf('36',plain,
    ( ( ( ( u1_struct_0 @ sk_A )
        = sk_B )
      | ~ ( r2_hidden @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) )
      | ( ( u1_struct_0 @ sk_A )
        = sk_B ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,
    ( ( ~ ( r2_hidden @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) )
      | ( ( u1_struct_0 @ sk_A )
        = sk_B ) )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(simplify,[status(thm)],['36'])).

thf('38',plain,
    ( ( r2_hidden @ ( sk_C @ sk_B @ ( u1_struct_0 @ sk_A ) ) @ ( u1_struct_0 @ sk_A ) )
    | ( ( u1_struct_0 @ sk_A )
      = sk_B ) ),
    inference(eq_fact,[status(thm)],['6'])).

thf('39',plain,
    ( ( ( u1_struct_0 @ sk_A )
      = sk_B )
   <= ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(clc,[status(thm)],['37','38'])).

thf('40',plain,
    ( ~ ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
    | ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,
    ( ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
   <= ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(split,[status(esa)],['40'])).

thf('42',plain,
    ( ( v1_subset_1 @ sk_B @ sk_B )
   <= ( ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
      & ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ) ),
    inference('sup+',[status(thm)],['39','41'])).

thf(d7_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( v1_subset_1 @ B @ A )
      <=> ( B != A ) ) ) )).

thf('43',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( v1_subset_1 @ X22 @ X21 )
      | ( X22 != X21 )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ X21 ) ) ) ),
    inference(cnf,[status(esa)],[d7_subset_1])).

thf('44',plain,(
    ! [X21: $i] :
      ( ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ X21 ) )
      | ~ ( v1_subset_1 @ X21 @ X21 ) ) ),
    inference(simplify,[status(thm)],['43'])).

thf(dt_k2_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ) )).

thf('45',plain,(
    ! [X3: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ X3 ) @ ( k1_zfmisc_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_subset_1])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('46',plain,(
    ! [X2: $i] :
      ( ( k2_subset_1 @ X2 )
      = X2 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('47',plain,(
    ! [X3: $i] :
      ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X3 ) ) ),
    inference(demod,[status(thm)],['45','46'])).

thf('48',plain,(
    ! [X21: $i] :
      ~ ( v1_subset_1 @ X21 @ X21 ) ),
    inference(demod,[status(thm)],['44','47'])).

thf('49',plain,
    ( ~ ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
    | ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['42','48'])).

thf('50',plain,
    ( ~ ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
    | ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(split,[status(esa)],['40'])).

thf('51',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    ! [X21: $i,X22: $i] :
      ( ( X22 = X21 )
      | ( v1_subset_1 @ X22 @ X21 )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ X21 ) ) ) ),
    inference(cnf,[status(esa)],[d7_subset_1])).

thf('53',plain,
    ( ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
    | ( sk_B
      = ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,
    ( ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
   <= ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(split,[status(esa)],['0'])).

thf('55',plain,
    ( ( sk_B
      = ( u1_struct_0 @ sk_A ) )
   <= ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf(dt_k3_yellow_0,axiom,(
    ! [A: $i] :
      ( ( l1_orders_2 @ A )
     => ( m1_subset_1 @ ( k3_yellow_0 @ A ) @ ( u1_struct_0 @ A ) ) ) )).

thf('56',plain,(
    ! [X14: $i] :
      ( ( m1_subset_1 @ ( k3_yellow_0 @ X14 ) @ ( u1_struct_0 @ X14 ) )
      | ~ ( l1_orders_2 @ X14 ) ) ),
    inference(cnf,[status(esa)],[dt_k3_yellow_0])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('57',plain,(
    ! [X9: $i,X10: $i] :
      ( ( r2_hidden @ X9 @ X10 )
      | ( v1_xboole_0 @ X10 )
      | ~ ( m1_subset_1 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('58',plain,(
    ! [X0: $i] :
      ( ~ ( l1_orders_2 @ X0 )
      | ( v1_xboole_0 @ ( u1_struct_0 @ X0 ) )
      | ( r2_hidden @ ( k3_yellow_0 @ X0 ) @ ( u1_struct_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['56','57'])).

thf('59',plain,
    ( ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
      | ( v1_xboole_0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( l1_orders_2 @ sk_A ) )
   <= ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['55','58'])).

thf('60',plain,
    ( ( sk_B
      = ( u1_struct_0 @ sk_A ) )
   <= ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('61',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,
    ( ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
      | ( v1_xboole_0 @ sk_B ) )
   <= ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['59','60','61'])).

thf('63',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('64',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
   <= ~ ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference(clc,[status(thm)],['62','63'])).

thf('65',plain,
    ( ~ ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
   <= ~ ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['40'])).

thf('66',plain,
    ( ( r2_hidden @ ( k3_yellow_0 @ sk_A ) @ sk_B )
    | ( v1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['64','65'])).

thf('67',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','49','50','66'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.15  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.16  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4Oc8dIh1Vx
% 0.17/0.36  % Computer   : n022.cluster.edu
% 0.17/0.36  % Model      : x86_64 x86_64
% 0.17/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.17/0.36  % Memory     : 8042.1875MB
% 0.17/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.17/0.36  % CPULimit   : 60
% 0.17/0.36  % DateTime   : Tue Dec  1 17:36:41 EST 2020
% 0.17/0.36  % CPUTime    : 
% 0.17/0.36  % Running portfolio for 600 s
% 0.17/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.17/0.36  % Number of cores: 8
% 0.23/0.37  % Python version: Python 3.6.8
% 0.23/0.37  % Running in FO mode
% 0.23/0.50  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.23/0.50  % Solved by: fo/fo7.sh
% 0.23/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.23/0.50  % done 120 iterations in 0.058s
% 0.23/0.50  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.23/0.50  % SZS output start Refutation
% 0.23/0.50  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.23/0.50  thf(v13_waybel_0_type, type, v13_waybel_0: $i > $i > $o).
% 0.23/0.50  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.23/0.50  thf(v1_subset_1_type, type, v1_subset_1: $i > $i > $o).
% 0.23/0.50  thf(v3_orders_2_type, type, v3_orders_2: $i > $o).
% 0.23/0.50  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.23/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.23/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.23/0.50  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.23/0.50  thf(v1_yellow_0_type, type, v1_yellow_0: $i > $o).
% 0.23/0.50  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.23/0.50  thf(v4_orders_2_type, type, v4_orders_2: $i > $o).
% 0.23/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.23/0.50  thf(l1_orders_2_type, type, l1_orders_2: $i > $o).
% 0.23/0.50  thf(v5_orders_2_type, type, v5_orders_2: $i > $o).
% 0.23/0.50  thf(r1_orders_2_type, type, r1_orders_2: $i > $i > $i > $o).
% 0.23/0.50  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.23/0.50  thf(v2_waybel_0_type, type, v2_waybel_0: $i > $i > $o).
% 0.23/0.50  thf(k3_yellow_0_type, type, k3_yellow_0: $i > $i).
% 0.23/0.50  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.23/0.50  thf(t8_waybel_7, conjecture,
% 0.23/0.50    (![A:$i]:
% 0.23/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.23/0.50         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( v1_yellow_0 @ A ) & 
% 0.23/0.50         ( l1_orders_2 @ A ) ) =>
% 0.23/0.50       ( ![B:$i]:
% 0.23/0.50         ( ( ( ~( v1_xboole_0 @ B ) ) & ( v2_waybel_0 @ B @ A ) & 
% 0.23/0.50             ( v13_waybel_0 @ B @ A ) & 
% 0.23/0.50             ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.23/0.50           ( ( v1_subset_1 @ B @ ( u1_struct_0 @ A ) ) <=>
% 0.23/0.50             ( ~( r2_hidden @ ( k3_yellow_0 @ A ) @ B ) ) ) ) ) ))).
% 0.23/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.23/0.50    (~( ![A:$i]:
% 0.23/0.50        ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.23/0.50            ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( v1_yellow_0 @ A ) & 
% 0.23/0.50            ( l1_orders_2 @ A ) ) =>
% 0.23/0.50          ( ![B:$i]:
% 0.23/0.50            ( ( ( ~( v1_xboole_0 @ B ) ) & ( v2_waybel_0 @ B @ A ) & 
% 0.23/0.50                ( v13_waybel_0 @ B @ A ) & 
% 0.23/0.50                ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.23/0.50              ( ( v1_subset_1 @ B @ ( u1_struct_0 @ A ) ) <=>
% 0.23/0.50                ( ~( r2_hidden @ ( k3_yellow_0 @ A ) @ B ) ) ) ) ) ) )),
% 0.23/0.50    inference('cnf.neg', [status(esa)], [t8_waybel_7])).
% 0.23/0.50  thf('0', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)
% 0.23/0.50        | ~ (v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('1', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)) | 
% 0.23/0.50       ~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('split', [status(esa)], ['0'])).
% 0.23/0.50  thf(t2_tarski, axiom,
% 0.23/0.50    (![A:$i,B:$i]:
% 0.23/0.50     ( ( ![C:$i]: ( ( r2_hidden @ C @ A ) <=> ( r2_hidden @ C @ B ) ) ) =>
% 0.23/0.50       ( ( A ) = ( B ) ) ))).
% 0.23/0.50  thf('2', plain,
% 0.23/0.50      (![X0 : $i, X1 : $i]:
% 0.23/0.50         (((X1) = (X0))
% 0.23/0.50          | (r2_hidden @ (sk_C @ X0 @ X1) @ X0)
% 0.23/0.50          | (r2_hidden @ (sk_C @ X0 @ X1) @ X1))),
% 0.23/0.50      inference('cnf', [status(esa)], [t2_tarski])).
% 0.23/0.50  thf('3', plain,
% 0.23/0.50      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf(l3_subset_1, axiom,
% 0.23/0.50    (![A:$i,B:$i]:
% 0.23/0.50     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.23/0.50       ( ![C:$i]: ( ( r2_hidden @ C @ B ) => ( r2_hidden @ C @ A ) ) ) ))).
% 0.23/0.50  thf('4', plain,
% 0.23/0.50      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.23/0.50         (~ (r2_hidden @ X4 @ X5)
% 0.23/0.50          | (r2_hidden @ X4 @ X6)
% 0.23/0.50          | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.23/0.50      inference('cnf', [status(esa)], [l3_subset_1])).
% 0.23/0.50  thf('5', plain,
% 0.23/0.50      (![X0 : $i]:
% 0.23/0.50         ((r2_hidden @ X0 @ (u1_struct_0 @ sk_A)) | ~ (r2_hidden @ X0 @ sk_B))),
% 0.23/0.50      inference('sup-', [status(thm)], ['3', '4'])).
% 0.23/0.50  thf('6', plain,
% 0.23/0.50      (![X0 : $i]:
% 0.23/0.50         ((r2_hidden @ (sk_C @ sk_B @ X0) @ X0)
% 0.23/0.50          | ((X0) = (sk_B))
% 0.23/0.50          | (r2_hidden @ (sk_C @ sk_B @ X0) @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['2', '5'])).
% 0.23/0.50  thf('7', plain,
% 0.23/0.50      (((r2_hidden @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50         (u1_struct_0 @ sk_A))
% 0.23/0.50        | ((u1_struct_0 @ sk_A) = (sk_B)))),
% 0.23/0.50      inference('eq_fact', [status(thm)], ['6'])).
% 0.23/0.50  thf(t1_subset, axiom,
% 0.23/0.50    (![A:$i,B:$i]: ( ( r2_hidden @ A @ B ) => ( m1_subset_1 @ A @ B ) ))).
% 0.23/0.50  thf('8', plain,
% 0.23/0.50      (![X7 : $i, X8 : $i]: ((m1_subset_1 @ X7 @ X8) | ~ (r2_hidden @ X7 @ X8))),
% 0.23/0.50      inference('cnf', [status(esa)], [t1_subset])).
% 0.23/0.50  thf('9', plain,
% 0.23/0.50      ((((u1_struct_0 @ sk_A) = (sk_B))
% 0.23/0.50        | (m1_subset_1 @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50           (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['7', '8'])).
% 0.23/0.50  thf(t44_yellow_0, axiom,
% 0.23/0.50    (![A:$i]:
% 0.23/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v5_orders_2 @ A ) & 
% 0.23/0.50         ( v1_yellow_0 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.23/0.50       ( ![B:$i]:
% 0.23/0.50         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.23/0.50           ( r1_orders_2 @ A @ ( k3_yellow_0 @ A ) @ B ) ) ) ))).
% 0.23/0.50  thf('10', plain,
% 0.23/0.50      (![X15 : $i, X16 : $i]:
% 0.23/0.50         (~ (m1_subset_1 @ X15 @ (u1_struct_0 @ X16))
% 0.23/0.50          | (r1_orders_2 @ X16 @ (k3_yellow_0 @ X16) @ X15)
% 0.23/0.50          | ~ (l1_orders_2 @ X16)
% 0.23/0.50          | ~ (v1_yellow_0 @ X16)
% 0.23/0.50          | ~ (v5_orders_2 @ X16)
% 0.23/0.50          | (v2_struct_0 @ X16))),
% 0.23/0.50      inference('cnf', [status(esa)], [t44_yellow_0])).
% 0.23/0.50  thf('11', plain,
% 0.23/0.50      ((((u1_struct_0 @ sk_A) = (sk_B))
% 0.23/0.50        | (v2_struct_0 @ sk_A)
% 0.23/0.50        | ~ (v5_orders_2 @ sk_A)
% 0.23/0.50        | ~ (v1_yellow_0 @ sk_A)
% 0.23/0.50        | ~ (l1_orders_2 @ sk_A)
% 0.23/0.50        | (r1_orders_2 @ sk_A @ (k3_yellow_0 @ sk_A) @ 
% 0.23/0.50           (sk_C @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('sup-', [status(thm)], ['9', '10'])).
% 0.23/0.50  thf('12', plain, ((v5_orders_2 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('13', plain, ((v1_yellow_0 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('14', plain, ((l1_orders_2 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('15', plain,
% 0.23/0.50      ((((u1_struct_0 @ sk_A) = (sk_B))
% 0.23/0.50        | (v2_struct_0 @ sk_A)
% 0.23/0.50        | (r1_orders_2 @ sk_A @ (k3_yellow_0 @ sk_A) @ 
% 0.23/0.50           (sk_C @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('demod', [status(thm)], ['11', '12', '13', '14'])).
% 0.23/0.50  thf('16', plain, (~ (v2_struct_0 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('17', plain,
% 0.23/0.50      (((r1_orders_2 @ sk_A @ (k3_yellow_0 @ sk_A) @ 
% 0.23/0.50         (sk_C @ sk_B @ (u1_struct_0 @ sk_A)))
% 0.23/0.50        | ((u1_struct_0 @ sk_A) = (sk_B)))),
% 0.23/0.50      inference('clc', [status(thm)], ['15', '16'])).
% 0.23/0.50  thf('18', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('split', [status(esa)], ['0'])).
% 0.23/0.50  thf('19', plain,
% 0.23/0.50      (![X0 : $i]:
% 0.23/0.50         ((r2_hidden @ X0 @ (u1_struct_0 @ sk_A)) | ~ (r2_hidden @ X0 @ sk_B))),
% 0.23/0.50      inference('sup-', [status(thm)], ['3', '4'])).
% 0.23/0.50  thf('20', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ (u1_struct_0 @ sk_A)))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['18', '19'])).
% 0.23/0.50  thf('21', plain,
% 0.23/0.50      (![X7 : $i, X8 : $i]: ((m1_subset_1 @ X7 @ X8) | ~ (r2_hidden @ X7 @ X8))),
% 0.23/0.50      inference('cnf', [status(esa)], [t1_subset])).
% 0.23/0.50  thf('22', plain,
% 0.23/0.50      (((m1_subset_1 @ (k3_yellow_0 @ sk_A) @ (u1_struct_0 @ sk_A)))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['20', '21'])).
% 0.23/0.50  thf('23', plain,
% 0.23/0.50      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf(d20_waybel_0, axiom,
% 0.23/0.50    (![A:$i]:
% 0.23/0.50     ( ( l1_orders_2 @ A ) =>
% 0.23/0.50       ( ![B:$i]:
% 0.23/0.50         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.23/0.50           ( ( v13_waybel_0 @ B @ A ) <=>
% 0.23/0.50             ( ![C:$i]:
% 0.23/0.50               ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.23/0.50                 ( ![D:$i]:
% 0.23/0.50                   ( ( m1_subset_1 @ D @ ( u1_struct_0 @ A ) ) =>
% 0.23/0.50                     ( ( ( r2_hidden @ C @ B ) & ( r1_orders_2 @ A @ C @ D ) ) =>
% 0.23/0.50                       ( r2_hidden @ D @ B ) ) ) ) ) ) ) ) ) ))).
% 0.23/0.50  thf('24', plain,
% 0.23/0.50      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.23/0.50         (~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (u1_struct_0 @ X18)))
% 0.23/0.50          | ~ (v13_waybel_0 @ X17 @ X18)
% 0.23/0.50          | ~ (m1_subset_1 @ X19 @ (u1_struct_0 @ X18))
% 0.23/0.50          | (r2_hidden @ X19 @ X17)
% 0.23/0.50          | ~ (r1_orders_2 @ X18 @ X20 @ X19)
% 0.23/0.50          | ~ (r2_hidden @ X20 @ X17)
% 0.23/0.50          | ~ (m1_subset_1 @ X20 @ (u1_struct_0 @ X18))
% 0.23/0.50          | ~ (l1_orders_2 @ X18))),
% 0.23/0.50      inference('cnf', [status(esa)], [d20_waybel_0])).
% 0.23/0.50  thf('25', plain,
% 0.23/0.50      (![X0 : $i, X1 : $i]:
% 0.23/0.50         (~ (l1_orders_2 @ sk_A)
% 0.23/0.50          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.23/0.50          | ~ (r2_hidden @ X0 @ sk_B)
% 0.23/0.50          | ~ (r1_orders_2 @ sk_A @ X0 @ X1)
% 0.23/0.50          | (r2_hidden @ X1 @ sk_B)
% 0.23/0.50          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_A))
% 0.23/0.50          | ~ (v13_waybel_0 @ sk_B @ sk_A))),
% 0.23/0.50      inference('sup-', [status(thm)], ['23', '24'])).
% 0.23/0.50  thf('26', plain, ((l1_orders_2 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('27', plain, ((v13_waybel_0 @ sk_B @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('28', plain,
% 0.23/0.50      (![X0 : $i, X1 : $i]:
% 0.23/0.50         (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.23/0.50          | ~ (r2_hidden @ X0 @ sk_B)
% 0.23/0.50          | ~ (r1_orders_2 @ sk_A @ X0 @ X1)
% 0.23/0.50          | (r2_hidden @ X1 @ sk_B)
% 0.23/0.50          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.23/0.50  thf('29', plain,
% 0.23/0.50      ((![X0 : $i]:
% 0.23/0.50          (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.23/0.50           | (r2_hidden @ X0 @ sk_B)
% 0.23/0.50           | ~ (r1_orders_2 @ sk_A @ (k3_yellow_0 @ sk_A) @ X0)
% 0.23/0.50           | ~ (r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['22', '28'])).
% 0.23/0.50  thf('30', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('split', [status(esa)], ['0'])).
% 0.23/0.50  thf('31', plain,
% 0.23/0.50      ((![X0 : $i]:
% 0.23/0.50          (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.23/0.50           | (r2_hidden @ X0 @ sk_B)
% 0.23/0.50           | ~ (r1_orders_2 @ sk_A @ (k3_yellow_0 @ sk_A) @ X0)))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('demod', [status(thm)], ['29', '30'])).
% 0.23/0.50  thf('32', plain,
% 0.23/0.50      (((((u1_struct_0 @ sk_A) = (sk_B))
% 0.23/0.50         | (r2_hidden @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ sk_B)
% 0.23/0.50         | ~ (m1_subset_1 @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50              (u1_struct_0 @ sk_A))))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['17', '31'])).
% 0.23/0.50  thf('33', plain,
% 0.23/0.50      ((((u1_struct_0 @ sk_A) = (sk_B))
% 0.23/0.50        | (m1_subset_1 @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50           (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['7', '8'])).
% 0.23/0.50  thf('34', plain,
% 0.23/0.50      ((((r2_hidden @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ sk_B)
% 0.23/0.50         | ((u1_struct_0 @ sk_A) = (sk_B))))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('clc', [status(thm)], ['32', '33'])).
% 0.23/0.50  thf('35', plain,
% 0.23/0.50      (![X0 : $i, X1 : $i]:
% 0.23/0.50         (((X1) = (X0))
% 0.23/0.50          | ~ (r2_hidden @ (sk_C @ X0 @ X1) @ X0)
% 0.23/0.50          | ~ (r2_hidden @ (sk_C @ X0 @ X1) @ X1))),
% 0.23/0.50      inference('cnf', [status(esa)], [t2_tarski])).
% 0.23/0.50  thf('36', plain,
% 0.23/0.50      (((((u1_struct_0 @ sk_A) = (sk_B))
% 0.23/0.50         | ~ (r2_hidden @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50              (u1_struct_0 @ sk_A))
% 0.23/0.50         | ((u1_struct_0 @ sk_A) = (sk_B))))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['34', '35'])).
% 0.23/0.50  thf('37', plain,
% 0.23/0.50      (((~ (r2_hidden @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50            (u1_struct_0 @ sk_A))
% 0.23/0.50         | ((u1_struct_0 @ sk_A) = (sk_B))))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('simplify', [status(thm)], ['36'])).
% 0.23/0.50  thf('38', plain,
% 0.23/0.50      (((r2_hidden @ (sk_C @ sk_B @ (u1_struct_0 @ sk_A)) @ 
% 0.23/0.50         (u1_struct_0 @ sk_A))
% 0.23/0.50        | ((u1_struct_0 @ sk_A) = (sk_B)))),
% 0.23/0.50      inference('eq_fact', [status(thm)], ['6'])).
% 0.23/0.50  thf('39', plain,
% 0.23/0.50      ((((u1_struct_0 @ sk_A) = (sk_B)))
% 0.23/0.50         <= (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('clc', [status(thm)], ['37', '38'])).
% 0.23/0.50  thf('40', plain,
% 0.23/0.50      ((~ (r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)
% 0.23/0.50        | (v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('41', plain,
% 0.23/0.50      (((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))
% 0.23/0.50         <= (((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('split', [status(esa)], ['40'])).
% 0.23/0.50  thf('42', plain,
% 0.23/0.50      (((v1_subset_1 @ sk_B @ sk_B))
% 0.23/0.50         <= (((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))) & 
% 0.23/0.50             ((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('sup+', [status(thm)], ['39', '41'])).
% 0.23/0.50  thf(d7_subset_1, axiom,
% 0.23/0.50    (![A:$i,B:$i]:
% 0.23/0.50     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.23/0.50       ( ( v1_subset_1 @ B @ A ) <=> ( ( B ) != ( A ) ) ) ))).
% 0.23/0.50  thf('43', plain,
% 0.23/0.50      (![X21 : $i, X22 : $i]:
% 0.23/0.50         (~ (v1_subset_1 @ X22 @ X21)
% 0.23/0.50          | ((X22) != (X21))
% 0.23/0.50          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ X21)))),
% 0.23/0.50      inference('cnf', [status(esa)], [d7_subset_1])).
% 0.23/0.50  thf('44', plain,
% 0.23/0.50      (![X21 : $i]:
% 0.23/0.50         (~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ X21))
% 0.23/0.50          | ~ (v1_subset_1 @ X21 @ X21))),
% 0.23/0.50      inference('simplify', [status(thm)], ['43'])).
% 0.23/0.50  thf(dt_k2_subset_1, axiom,
% 0.23/0.50    (![A:$i]: ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ))).
% 0.23/0.50  thf('45', plain,
% 0.23/0.50      (![X3 : $i]: (m1_subset_1 @ (k2_subset_1 @ X3) @ (k1_zfmisc_1 @ X3))),
% 0.23/0.50      inference('cnf', [status(esa)], [dt_k2_subset_1])).
% 0.23/0.50  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.23/0.50  thf('46', plain, (![X2 : $i]: ((k2_subset_1 @ X2) = (X2))),
% 0.23/0.50      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.23/0.50  thf('47', plain, (![X3 : $i]: (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X3))),
% 0.23/0.50      inference('demod', [status(thm)], ['45', '46'])).
% 0.23/0.50  thf('48', plain, (![X21 : $i]: ~ (v1_subset_1 @ X21 @ X21)),
% 0.23/0.50      inference('demod', [status(thm)], ['44', '47'])).
% 0.23/0.50  thf('49', plain,
% 0.23/0.50      (~ ((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)) | 
% 0.23/0.50       ~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['42', '48'])).
% 0.23/0.50  thf('50', plain,
% 0.23/0.50      (~ ((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)) | 
% 0.23/0.50       ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('split', [status(esa)], ['40'])).
% 0.23/0.50  thf('51', plain,
% 0.23/0.50      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('52', plain,
% 0.23/0.50      (![X21 : $i, X22 : $i]:
% 0.23/0.50         (((X22) = (X21))
% 0.23/0.50          | (v1_subset_1 @ X22 @ X21)
% 0.23/0.50          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ X21)))),
% 0.23/0.50      inference('cnf', [status(esa)], [d7_subset_1])).
% 0.23/0.50  thf('53', plain,
% 0.23/0.50      (((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))
% 0.23/0.50        | ((sk_B) = (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['51', '52'])).
% 0.23/0.50  thf('54', plain,
% 0.23/0.50      ((~ (v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))
% 0.23/0.50         <= (~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('split', [status(esa)], ['0'])).
% 0.23/0.50  thf('55', plain,
% 0.23/0.50      ((((sk_B) = (u1_struct_0 @ sk_A)))
% 0.23/0.50         <= (~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('sup-', [status(thm)], ['53', '54'])).
% 0.23/0.50  thf(dt_k3_yellow_0, axiom,
% 0.23/0.50    (![A:$i]:
% 0.23/0.50     ( ( l1_orders_2 @ A ) =>
% 0.23/0.50       ( m1_subset_1 @ ( k3_yellow_0 @ A ) @ ( u1_struct_0 @ A ) ) ))).
% 0.23/0.50  thf('56', plain,
% 0.23/0.50      (![X14 : $i]:
% 0.23/0.50         ((m1_subset_1 @ (k3_yellow_0 @ X14) @ (u1_struct_0 @ X14))
% 0.23/0.50          | ~ (l1_orders_2 @ X14))),
% 0.23/0.50      inference('cnf', [status(esa)], [dt_k3_yellow_0])).
% 0.23/0.50  thf(t2_subset, axiom,
% 0.23/0.50    (![A:$i,B:$i]:
% 0.23/0.50     ( ( m1_subset_1 @ A @ B ) =>
% 0.23/0.50       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.23/0.50  thf('57', plain,
% 0.23/0.50      (![X9 : $i, X10 : $i]:
% 0.23/0.50         ((r2_hidden @ X9 @ X10)
% 0.23/0.50          | (v1_xboole_0 @ X10)
% 0.23/0.50          | ~ (m1_subset_1 @ X9 @ X10))),
% 0.23/0.50      inference('cnf', [status(esa)], [t2_subset])).
% 0.23/0.50  thf('58', plain,
% 0.23/0.50      (![X0 : $i]:
% 0.23/0.50         (~ (l1_orders_2 @ X0)
% 0.23/0.50          | (v1_xboole_0 @ (u1_struct_0 @ X0))
% 0.23/0.50          | (r2_hidden @ (k3_yellow_0 @ X0) @ (u1_struct_0 @ X0)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['56', '57'])).
% 0.23/0.50  thf('59', plain,
% 0.23/0.50      ((((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)
% 0.23/0.50         | (v1_xboole_0 @ (u1_struct_0 @ sk_A))
% 0.23/0.50         | ~ (l1_orders_2 @ sk_A)))
% 0.23/0.50         <= (~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('sup+', [status(thm)], ['55', '58'])).
% 0.23/0.50  thf('60', plain,
% 0.23/0.50      ((((sk_B) = (u1_struct_0 @ sk_A)))
% 0.23/0.50         <= (~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('sup-', [status(thm)], ['53', '54'])).
% 0.23/0.50  thf('61', plain, ((l1_orders_2 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('62', plain,
% 0.23/0.50      ((((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B) | (v1_xboole_0 @ sk_B)))
% 0.23/0.50         <= (~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('demod', [status(thm)], ['59', '60', '61'])).
% 0.23/0.50  thf('63', plain, (~ (v1_xboole_0 @ sk_B)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('64', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B))
% 0.23/0.50         <= (~ ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))))),
% 0.23/0.50      inference('clc', [status(thm)], ['62', '63'])).
% 0.23/0.50  thf('65', plain,
% 0.23/0.50      ((~ (r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B))
% 0.23/0.50         <= (~ ((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)))),
% 0.23/0.50      inference('split', [status(esa)], ['40'])).
% 0.23/0.50  thf('66', plain,
% 0.23/0.50      (((r2_hidden @ (k3_yellow_0 @ sk_A) @ sk_B)) | 
% 0.23/0.50       ((v1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A)))),
% 0.23/0.50      inference('sup-', [status(thm)], ['64', '65'])).
% 0.23/0.50  thf('67', plain, ($false),
% 0.23/0.50      inference('sat_resolution*', [status(thm)], ['1', '49', '50', '66'])).
% 0.23/0.50  
% 0.23/0.50  % SZS output end Refutation
% 0.23/0.50  
% 0.23/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
