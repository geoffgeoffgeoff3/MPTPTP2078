%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.JcINlvAHFV

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:02:10 EST 2020

% Result     : Theorem 0.52s
% Output     : Refutation 0.52s
% Verified   : 
% Statistics : Number of formulae       :  139 ( 522 expanded)
%              Number of leaves         :   34 ( 169 expanded)
%              Depth                    :   25
%              Number of atoms          : 1327 (10855 expanded)
%              Number of equality atoms :   23 ( 503 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(l1_orders_2_type,type,(
    l1_orders_2: $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(m2_orders_2_type,type,(
    m2_orders_2: $i > $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v3_orders_2_type,type,(
    v3_orders_2: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(r1_orders_2_type,type,(
    r1_orders_2: $i > $i > $i > $o )).

thf(v6_orders_2_type,type,(
    v6_orders_2: $i > $i > $o )).

thf(r3_orders_2_type,type,(
    r3_orders_2: $i > $i > $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(v4_orders_2_type,type,(
    v4_orders_2: $i > $o )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(k3_orders_2_type,type,(
    k3_orders_2: $i > $i > $i > $i )).

thf(r2_orders_2_type,type,(
    r2_orders_2: $i > $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(m1_orders_1_type,type,(
    m1_orders_1: $i > $i > $o )).

thf(k4_mcart_1_type,type,(
    k4_mcart_1: $i > $i > $i > $i > $i )).

thf(v5_orders_2_type,type,(
    v5_orders_2: $i > $o )).

thf(k1_orders_1_type,type,(
    k1_orders_1: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(t34_mcart_1,axiom,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( ( r2_hidden @ B @ A )
              & ! [C: $i,D: $i,E: $i,F: $i] :
                  ~ ( ( ( r2_hidden @ C @ A )
                      | ( r2_hidden @ D @ A ) )
                    & ( B
                      = ( k4_mcart_1 @ C @ D @ E @ F ) ) ) ) ) )).

thf('0',plain,(
    ! [X3: $i] :
      ( ( X3 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X3 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[t34_mcart_1])).

thf(t81_orders_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ! [C: $i] :
              ( ( m1_orders_1 @ C @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
             => ! [D: $i] :
                  ( ( m2_orders_2 @ D @ A @ C )
                 => ( ( B
                      = ( k1_funct_1 @ C @ ( u1_struct_0 @ A ) ) )
                   => ( ( k3_orders_2 @ A @ D @ B )
                      = k1_xboole_0 ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v3_orders_2 @ A )
          & ( v4_orders_2 @ A )
          & ( v5_orders_2 @ A )
          & ( l1_orders_2 @ A ) )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
           => ! [C: $i] :
                ( ( m1_orders_1 @ C @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
               => ! [D: $i] :
                    ( ( m2_orders_2 @ D @ A @ C )
                   => ( ( B
                        = ( k1_funct_1 @ C @ ( u1_struct_0 @ A ) ) )
                     => ( ( k3_orders_2 @ A @ D @ B )
                        = k1_xboole_0 ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t81_orders_2])).

thf('1',plain,(
    m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m2_orders_2 @ sk_D @ sk_A @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    m1_orders_1 @ sk_C @ ( k1_orders_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_m2_orders_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A )
        & ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) )
     => ! [C: $i] :
          ( ( m2_orders_2 @ C @ A @ B )
         => ( ( v6_orders_2 @ C @ A )
            & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) )).

thf('4',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ~ ( l1_orders_2 @ X11 )
      | ~ ( v5_orders_2 @ X11 )
      | ~ ( v4_orders_2 @ X11 )
      | ~ ( v3_orders_2 @ X11 )
      | ( v2_struct_0 @ X11 )
      | ~ ( m1_orders_1 @ X12 @ ( k1_orders_1 @ ( u1_struct_0 @ X11 ) ) )
      | ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X11 ) ) )
      | ~ ( m2_orders_2 @ X13 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[dt_m2_orders_2])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( m2_orders_2 @ X0 @ sk_A @ sk_C )
      | ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_struct_0 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    ! [X0: $i] :
      ( ~ ( m2_orders_2 @ X0 @ sk_A @ sk_C )
      | ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['5','6','7','8','9'])).

thf('11',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_C ) ) ),
    inference(clc,[status(thm)],['10','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['2','12'])).

thf(dt_k3_orders_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
        & ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) )
     => ( m1_subset_1 @ ( k3_orders_2 @ A @ B @ C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) )).

thf('14',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X9 ) ) )
      | ~ ( l1_orders_2 @ X9 )
      | ~ ( v5_orders_2 @ X9 )
      | ~ ( v4_orders_2 @ X9 )
      | ~ ( v3_orders_2 @ X9 )
      | ( v2_struct_0 @ X9 )
      | ~ ( m1_subset_1 @ X10 @ ( u1_struct_0 @ X9 ) )
      | ( m1_subset_1 @ ( k3_orders_2 @ X9 @ X8 @ X10 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X9 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_orders_2])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( v2_struct_0 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['15','16','17','18','19'])).

thf('21',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( m1_subset_1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference(clc,[status(thm)],['20','21'])).

thf('23',plain,(
    m1_subset_1 @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['1','22'])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X2 ) )
      | ( m1_subset_1 @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,
    ( ( ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
      = k1_xboole_0 )
    | ( m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['0','25'])).

thf('27',plain,(
    ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['26','27'])).

thf('29',plain,(
    m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t30_orders_2,axiom,(
    ! [A: $i] :
      ( ( ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
             => ~ ( ( r1_orders_2 @ A @ B @ C )
                  & ( r2_orders_2 @ A @ C @ B ) ) ) ) ) )).

thf('30',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( u1_struct_0 @ X18 ) )
      | ~ ( r2_orders_2 @ X18 @ X19 @ X17 )
      | ~ ( r1_orders_2 @ X18 @ X17 @ X19 )
      | ~ ( m1_subset_1 @ X19 @ ( u1_struct_0 @ X18 ) )
      | ~ ( l1_orders_2 @ X18 )
      | ~ ( v5_orders_2 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t30_orders_2])).

thf('31',plain,(
    ! [X0: $i] :
      ( ~ ( v5_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r1_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ~ ( r2_orders_2 @ sk_A @ X0 @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r1_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ~ ( r2_orders_2 @ sk_A @ X0 @ sk_B_1 ) ) ),
    inference(demod,[status(thm)],['31','32','33'])).

thf('35',plain,
    ( ~ ( r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_B_1 )
    | ~ ( r1_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ) ),
    inference('sup-',[status(thm)],['28','34'])).

thf('36',plain,(
    m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['26','27'])).

thf('37',plain,(
    ! [X3: $i] :
      ( ( X3 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X3 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[t34_mcart_1])).

thf('38',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['2','12'])).

thf(t57_orders_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
             => ! [D: $i] :
                  ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                 => ( ( r2_hidden @ B @ ( k3_orders_2 @ A @ D @ C ) )
                  <=> ( ( r2_orders_2 @ A @ B @ C )
                      & ( r2_hidden @ B @ D ) ) ) ) ) ) ) )).

thf('39',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ~ ( m1_subset_1 @ X20 @ ( u1_struct_0 @ X21 ) )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X21 ) ) )
      | ~ ( r2_hidden @ X20 @ ( k3_orders_2 @ X21 @ X22 @ X23 ) )
      | ( r2_hidden @ X20 @ X22 )
      | ~ ( m1_subset_1 @ X23 @ ( u1_struct_0 @ X21 ) )
      | ~ ( l1_orders_2 @ X21 )
      | ~ ( v5_orders_2 @ X21 )
      | ~ ( v4_orders_2 @ X21 )
      | ~ ( v3_orders_2 @ X21 )
      | ( v2_struct_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t57_orders_2])).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( r2_hidden @ X1 @ sk_D )
      | ~ ( r2_hidden @ X1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( r2_hidden @ X1 @ sk_D )
      | ~ ( r2_hidden @ X1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['40','41','42','43','44'])).

thf('46',plain,(
    ! [X0: $i] :
      ( ( ( k3_orders_2 @ sk_A @ sk_D @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) ) @ ( u1_struct_0 @ sk_A ) )
      | ( r2_hidden @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) ) @ sk_D )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['37','45'])).

thf('47',plain,
    ( ( v2_struct_0 @ sk_A )
    | ~ ( m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) )
    | ( r2_hidden @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_D )
    | ( ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['36','46'])).

thf('48',plain,(
    m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( r2_hidden @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_D )
    | ( ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['47','48'])).

thf('50',plain,(
    ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( r2_hidden @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_D ) ),
    inference('simplify_reflect-',[status(thm)],['49','50'])).

thf('52',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,(
    r2_hidden @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_D ),
    inference(clc,[status(thm)],['51','52'])).

thf('54',plain,(
    m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['26','27'])).

thf('55',plain,
    ( sk_B_1
    = ( k1_funct_1 @ sk_C @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t80_orders_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( v4_orders_2 @ A )
        & ( v5_orders_2 @ A )
        & ( l1_orders_2 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
             => ! [D: $i] :
                  ( ( m1_orders_1 @ D @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) )
                 => ! [E: $i] :
                      ( ( m2_orders_2 @ E @ A @ D )
                     => ( ( ( r2_hidden @ B @ E )
                          & ( C
                            = ( k1_funct_1 @ D @ ( u1_struct_0 @ A ) ) ) )
                       => ( r3_orders_2 @ A @ C @ B ) ) ) ) ) ) ) )).

thf('56',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i] :
      ( ~ ( m1_subset_1 @ X24 @ ( u1_struct_0 @ X25 ) )
      | ~ ( m1_orders_1 @ X26 @ ( k1_orders_1 @ ( u1_struct_0 @ X25 ) ) )
      | ( X27
       != ( k1_funct_1 @ X26 @ ( u1_struct_0 @ X25 ) ) )
      | ( r3_orders_2 @ X25 @ X27 @ X24 )
      | ~ ( r2_hidden @ X24 @ X28 )
      | ~ ( m2_orders_2 @ X28 @ X25 @ X26 )
      | ~ ( m1_subset_1 @ X27 @ ( u1_struct_0 @ X25 ) )
      | ~ ( l1_orders_2 @ X25 )
      | ~ ( v5_orders_2 @ X25 )
      | ~ ( v4_orders_2 @ X25 )
      | ~ ( v3_orders_2 @ X25 )
      | ( v2_struct_0 @ X25 ) ) ),
    inference(cnf,[status(esa)],[t80_orders_2])).

thf('57',plain,(
    ! [X24: $i,X25: $i,X26: $i,X28: $i] :
      ( ( v2_struct_0 @ X25 )
      | ~ ( v3_orders_2 @ X25 )
      | ~ ( v4_orders_2 @ X25 )
      | ~ ( v5_orders_2 @ X25 )
      | ~ ( l1_orders_2 @ X25 )
      | ~ ( m1_subset_1 @ ( k1_funct_1 @ X26 @ ( u1_struct_0 @ X25 ) ) @ ( u1_struct_0 @ X25 ) )
      | ~ ( m2_orders_2 @ X28 @ X25 @ X26 )
      | ~ ( r2_hidden @ X24 @ X28 )
      | ( r3_orders_2 @ X25 @ ( k1_funct_1 @ X26 @ ( u1_struct_0 @ X25 ) ) @ X24 )
      | ~ ( m1_orders_1 @ X26 @ ( k1_orders_1 @ ( u1_struct_0 @ X25 ) ) )
      | ~ ( m1_subset_1 @ X24 @ ( u1_struct_0 @ X25 ) ) ) ),
    inference(simplify,[status(thm)],['56'])).

thf('58',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( m1_orders_1 @ sk_C @ ( k1_orders_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( r3_orders_2 @ sk_A @ ( k1_funct_1 @ sk_C @ ( u1_struct_0 @ sk_A ) ) @ X0 )
      | ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( m2_orders_2 @ X1 @ sk_A @ sk_C )
      | ~ ( l1_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['55','57'])).

thf('59',plain,(
    m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('60',plain,(
    m1_orders_1 @ sk_C @ ( k1_orders_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('61',plain,
    ( sk_B_1
    = ( k1_funct_1 @ sk_C @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('64',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('65',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('66',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( r3_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( m2_orders_2 @ X1 @ sk_A @ sk_C )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['58','59','60','61','62','63','64','65'])).

thf('67',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( m2_orders_2 @ X0 @ sk_A @ sk_C )
      | ~ ( r2_hidden @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ X0 )
      | ( r3_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ) ) ),
    inference('sup-',[status(thm)],['54','66'])).

thf('68',plain,
    ( ( r3_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) )
    | ~ ( m2_orders_2 @ sk_D @ sk_A @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['53','67'])).

thf('69',plain,(
    m2_orders_2 @ sk_D @ sk_A @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('70',plain,
    ( ( r3_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['68','69'])).

thf('71',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('72',plain,(
    r3_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ),
    inference(clc,[status(thm)],['70','71'])).

thf('73',plain,(
    m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_r3_orders_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v3_orders_2 @ A )
        & ( l1_orders_2 @ A )
        & ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
        & ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) )
     => ( ( r3_orders_2 @ A @ B @ C )
      <=> ( r1_orders_2 @ A @ B @ C ) ) ) )).

thf('74',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X14 @ ( u1_struct_0 @ X15 ) )
      | ~ ( l1_orders_2 @ X15 )
      | ~ ( v3_orders_2 @ X15 )
      | ( v2_struct_0 @ X15 )
      | ~ ( m1_subset_1 @ X16 @ ( u1_struct_0 @ X15 ) )
      | ( r1_orders_2 @ X15 @ X14 @ X16 )
      | ~ ( r3_orders_2 @ X15 @ X14 @ X16 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r3_orders_2])).

thf('75',plain,(
    ! [X0: $i] :
      ( ~ ( r3_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ( r1_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( v2_struct_0 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['73','74'])).

thf('76',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('77',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('78',plain,(
    ! [X0: $i] :
      ( ~ ( r3_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ( r1_orders_2 @ sk_A @ sk_B_1 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['75','76','77'])).

thf('79',plain,
    ( ( v2_struct_0 @ sk_A )
    | ~ ( m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) )
    | ( r1_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ) ),
    inference('sup-',[status(thm)],['72','78'])).

thf('80',plain,(
    m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['26','27'])).

thf('81',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( r1_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ) ),
    inference(demod,[status(thm)],['79','80'])).

thf('82',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('83',plain,(
    r1_orders_2 @ sk_A @ sk_B_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) ),
    inference(clc,[status(thm)],['81','82'])).

thf('84',plain,(
    ~ ( r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_B_1 ) ),
    inference(demod,[status(thm)],['35','83'])).

thf('85',plain,(
    m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ ( u1_struct_0 @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['26','27'])).

thf('86',plain,(
    ! [X3: $i] :
      ( ( X3 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X3 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[t34_mcart_1])).

thf('87',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['2','12'])).

thf('88',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ~ ( m1_subset_1 @ X20 @ ( u1_struct_0 @ X21 ) )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X21 ) ) )
      | ~ ( r2_hidden @ X20 @ ( k3_orders_2 @ X21 @ X22 @ X23 ) )
      | ( r2_orders_2 @ X21 @ X20 @ X23 )
      | ~ ( m1_subset_1 @ X23 @ ( u1_struct_0 @ X21 ) )
      | ~ ( l1_orders_2 @ X21 )
      | ~ ( v5_orders_2 @ X21 )
      | ~ ( v4_orders_2 @ X21 )
      | ~ ( v3_orders_2 @ X21 )
      | ( v2_struct_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t57_orders_2])).

thf('89',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v3_orders_2 @ sk_A )
      | ~ ( v4_orders_2 @ sk_A )
      | ~ ( v5_orders_2 @ sk_A )
      | ~ ( l1_orders_2 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( r2_orders_2 @ sk_A @ X1 @ X0 )
      | ~ ( r2_hidden @ X1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['87','88'])).

thf('90',plain,(
    v3_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('91',plain,(
    v4_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('92',plain,(
    v5_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('93',plain,(
    l1_orders_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('94',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( r2_orders_2 @ sk_A @ X1 @ X0 )
      | ~ ( r2_hidden @ X1 @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['89','90','91','92','93'])).

thf('95',plain,(
    ! [X0: $i] :
      ( ( ( k3_orders_2 @ sk_A @ sk_D @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) ) @ ( u1_struct_0 @ sk_A ) )
      | ( r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ X0 ) ) @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['86','94'])).

thf('96',plain,
    ( ( v2_struct_0 @ sk_A )
    | ~ ( m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) )
    | ( r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_B_1 )
    | ( ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['85','95'])).

thf('97',plain,(
    m1_subset_1 @ sk_B_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('98',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_B_1 )
    | ( ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['96','97'])).

thf('99',plain,(
    ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('100',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_B_1 ) ),
    inference('simplify_reflect-',[status(thm)],['98','99'])).

thf('101',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('102',plain,(
    r2_orders_2 @ sk_A @ ( sk_B @ ( k3_orders_2 @ sk_A @ sk_D @ sk_B_1 ) ) @ sk_B_1 ),
    inference(clc,[status(thm)],['100','101'])).

thf('103',plain,(
    $false ),
    inference(demod,[status(thm)],['84','102'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.JcINlvAHFV
% 0.14/0.34  % Computer   : n021.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 17:16:34 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.34  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.52/0.72  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.52/0.72  % Solved by: fo/fo7.sh
% 0.52/0.72  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.52/0.72  % done 268 iterations in 0.270s
% 0.52/0.72  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.52/0.72  % SZS output start Refutation
% 0.52/0.72  thf(l1_orders_2_type, type, l1_orders_2: $i > $o).
% 0.52/0.72  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.52/0.72  thf(m2_orders_2_type, type, m2_orders_2: $i > $i > $i > $o).
% 0.52/0.72  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.52/0.72  thf(sk_A_type, type, sk_A: $i).
% 0.52/0.72  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.52/0.72  thf(v3_orders_2_type, type, v3_orders_2: $i > $o).
% 0.52/0.72  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.52/0.72  thf(sk_C_type, type, sk_C: $i).
% 0.52/0.72  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.52/0.72  thf(r1_orders_2_type, type, r1_orders_2: $i > $i > $i > $o).
% 0.52/0.72  thf(v6_orders_2_type, type, v6_orders_2: $i > $i > $o).
% 0.52/0.72  thf(r3_orders_2_type, type, r3_orders_2: $i > $i > $i > $o).
% 0.52/0.72  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.52/0.72  thf(v4_orders_2_type, type, v4_orders_2: $i > $o).
% 0.52/0.72  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.52/0.72  thf(k3_orders_2_type, type, k3_orders_2: $i > $i > $i > $i).
% 0.52/0.72  thf(r2_orders_2_type, type, r2_orders_2: $i > $i > $i > $o).
% 0.52/0.72  thf(sk_B_type, type, sk_B: $i > $i).
% 0.52/0.72  thf(m1_orders_1_type, type, m1_orders_1: $i > $i > $o).
% 0.52/0.72  thf(k4_mcart_1_type, type, k4_mcart_1: $i > $i > $i > $i > $i).
% 0.52/0.72  thf(v5_orders_2_type, type, v5_orders_2: $i > $o).
% 0.52/0.72  thf(k1_orders_1_type, type, k1_orders_1: $i > $i).
% 0.52/0.72  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.52/0.72  thf(sk_D_type, type, sk_D: $i).
% 0.52/0.72  thf(t34_mcart_1, axiom,
% 0.52/0.72    (![A:$i]:
% 0.52/0.72     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.52/0.72          ( ![B:$i]:
% 0.52/0.72            ( ~( ( r2_hidden @ B @ A ) & 
% 0.52/0.72                 ( ![C:$i,D:$i,E:$i,F:$i]:
% 0.52/0.72                   ( ~( ( ( r2_hidden @ C @ A ) | ( r2_hidden @ D @ A ) ) & 
% 0.52/0.72                        ( ( B ) = ( k4_mcart_1 @ C @ D @ E @ F ) ) ) ) ) ) ) ) ) ))).
% 0.52/0.72  thf('0', plain,
% 0.52/0.72      (![X3 : $i]: (((X3) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X3) @ X3))),
% 0.52/0.72      inference('cnf', [status(esa)], [t34_mcart_1])).
% 0.52/0.72  thf(t81_orders_2, conjecture,
% 0.52/0.72    (![A:$i]:
% 0.52/0.72     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.52/0.72       ( ![B:$i]:
% 0.52/0.72         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72           ( ![C:$i]:
% 0.52/0.72             ( ( m1_orders_1 @ C @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72               ( ![D:$i]:
% 0.52/0.72                 ( ( m2_orders_2 @ D @ A @ C ) =>
% 0.52/0.72                   ( ( ( B ) = ( k1_funct_1 @ C @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72                     ( ( k3_orders_2 @ A @ D @ B ) = ( k1_xboole_0 ) ) ) ) ) ) ) ) ) ))).
% 0.52/0.72  thf(zf_stmt_0, negated_conjecture,
% 0.52/0.72    (~( ![A:$i]:
% 0.52/0.72        ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72            ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.52/0.72          ( ![B:$i]:
% 0.52/0.72            ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72              ( ![C:$i]:
% 0.52/0.72                ( ( m1_orders_1 @ C @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72                  ( ![D:$i]:
% 0.52/0.72                    ( ( m2_orders_2 @ D @ A @ C ) =>
% 0.52/0.72                      ( ( ( B ) = ( k1_funct_1 @ C @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72                        ( ( k3_orders_2 @ A @ D @ B ) = ( k1_xboole_0 ) ) ) ) ) ) ) ) ) ) )),
% 0.52/0.72    inference('cnf.neg', [status(esa)], [t81_orders_2])).
% 0.52/0.72  thf('1', plain, ((m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('2', plain, ((m2_orders_2 @ sk_D @ sk_A @ sk_C)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('3', plain,
% 0.52/0.72      ((m1_orders_1 @ sk_C @ (k1_orders_1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf(dt_m2_orders_2, axiom,
% 0.52/0.72    (![A:$i,B:$i]:
% 0.52/0.72     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) & 
% 0.52/0.72         ( m1_orders_1 @ B @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.52/0.72       ( ![C:$i]:
% 0.52/0.72         ( ( m2_orders_2 @ C @ A @ B ) =>
% 0.52/0.72           ( ( v6_orders_2 @ C @ A ) & 
% 0.52/0.72             ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ))).
% 0.52/0.72  thf('4', plain,
% 0.52/0.72      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.52/0.72         (~ (l1_orders_2 @ X11)
% 0.52/0.72          | ~ (v5_orders_2 @ X11)
% 0.52/0.72          | ~ (v4_orders_2 @ X11)
% 0.52/0.72          | ~ (v3_orders_2 @ X11)
% 0.52/0.72          | (v2_struct_0 @ X11)
% 0.52/0.72          | ~ (m1_orders_1 @ X12 @ (k1_orders_1 @ (u1_struct_0 @ X11)))
% 0.52/0.72          | (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (u1_struct_0 @ X11)))
% 0.52/0.72          | ~ (m2_orders_2 @ X13 @ X11 @ X12))),
% 0.52/0.72      inference('cnf', [status(esa)], [dt_m2_orders_2])).
% 0.52/0.72  thf('5', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (m2_orders_2 @ X0 @ sk_A @ sk_C)
% 0.52/0.72          | (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.52/0.72          | (v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (v3_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v4_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v5_orders_2 @ sk_A)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['3', '4'])).
% 0.52/0.72  thf('6', plain, ((v3_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('7', plain, ((v4_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('8', plain, ((v5_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('9', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('10', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (m2_orders_2 @ X0 @ sk_A @ sk_C)
% 0.52/0.72          | (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('demod', [status(thm)], ['5', '6', '7', '8', '9'])).
% 0.52/0.72  thf('11', plain, (~ (v2_struct_0 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('12', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.52/0.72          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_C))),
% 0.52/0.72      inference('clc', [status(thm)], ['10', '11'])).
% 0.52/0.72  thf('13', plain,
% 0.52/0.72      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['2', '12'])).
% 0.52/0.72  thf(dt_k3_orders_2, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i]:
% 0.52/0.72     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) & 
% 0.52/0.72         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) & 
% 0.52/0.72         ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72       ( m1_subset_1 @
% 0.52/0.72         ( k3_orders_2 @ A @ B @ C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ))).
% 0.52/0.72  thf('14', plain,
% 0.52/0.72      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (u1_struct_0 @ X9)))
% 0.52/0.72          | ~ (l1_orders_2 @ X9)
% 0.52/0.72          | ~ (v5_orders_2 @ X9)
% 0.52/0.72          | ~ (v4_orders_2 @ X9)
% 0.52/0.72          | ~ (v3_orders_2 @ X9)
% 0.52/0.72          | (v2_struct_0 @ X9)
% 0.52/0.72          | ~ (m1_subset_1 @ X10 @ (u1_struct_0 @ X9))
% 0.52/0.72          | (m1_subset_1 @ (k3_orders_2 @ X9 @ X8 @ X10) @ 
% 0.52/0.72             (k1_zfmisc_1 @ (u1_struct_0 @ X9))))),
% 0.52/0.72      inference('cnf', [status(esa)], [dt_k3_orders_2])).
% 0.52/0.72  thf('15', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((m1_subset_1 @ (k3_orders_2 @ sk_A @ sk_D @ X0) @ 
% 0.52/0.72           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (v3_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v4_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v5_orders_2 @ sk_A)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['13', '14'])).
% 0.52/0.72  thf('16', plain, ((v3_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('17', plain, ((v4_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('18', plain, ((v5_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('19', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('20', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((m1_subset_1 @ (k3_orders_2 @ sk_A @ sk_D @ X0) @ 
% 0.52/0.72           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('demod', [status(thm)], ['15', '16', '17', '18', '19'])).
% 0.52/0.72  thf('21', plain, (~ (v2_struct_0 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('22', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (m1_subset_1 @ (k3_orders_2 @ sk_A @ sk_D @ X0) @ 
% 0.52/0.72             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.52/0.72      inference('clc', [status(thm)], ['20', '21'])).
% 0.52/0.72  thf('23', plain,
% 0.52/0.72      ((m1_subset_1 @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1) @ 
% 0.52/0.72        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['1', '22'])).
% 0.52/0.72  thf(t4_subset, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i]:
% 0.52/0.72     ( ( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) ) =>
% 0.52/0.72       ( m1_subset_1 @ A @ C ) ))).
% 0.52/0.72  thf('24', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.52/0.72         (~ (r2_hidden @ X0 @ X1)
% 0.52/0.72          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X2))
% 0.52/0.72          | (m1_subset_1 @ X0 @ X2))),
% 0.52/0.72      inference('cnf', [status(esa)], [t4_subset])).
% 0.52/0.72  thf('25', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | ~ (r2_hidden @ X0 @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['23', '24'])).
% 0.52/0.72  thf('26', plain,
% 0.52/0.72      ((((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) = (k1_xboole_0))
% 0.52/0.72        | (m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72           (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['0', '25'])).
% 0.52/0.72  thf('27', plain, (((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) != (k1_xboole_0))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('28', plain,
% 0.52/0.72      ((m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72        (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['26', '27'])).
% 0.52/0.72  thf('29', plain, ((m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf(t30_orders_2, axiom,
% 0.52/0.72    (![A:$i]:
% 0.52/0.72     ( ( ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.52/0.72       ( ![B:$i]:
% 0.52/0.72         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72           ( ![C:$i]:
% 0.52/0.72             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72               ( ~( ( r1_orders_2 @ A @ B @ C ) & ( r2_orders_2 @ A @ C @ B ) ) ) ) ) ) ) ))).
% 0.52/0.72  thf('30', plain,
% 0.52/0.72      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X17 @ (u1_struct_0 @ X18))
% 0.52/0.72          | ~ (r2_orders_2 @ X18 @ X19 @ X17)
% 0.52/0.72          | ~ (r1_orders_2 @ X18 @ X17 @ X19)
% 0.52/0.72          | ~ (m1_subset_1 @ X19 @ (u1_struct_0 @ X18))
% 0.52/0.72          | ~ (l1_orders_2 @ X18)
% 0.52/0.72          | ~ (v5_orders_2 @ X18))),
% 0.52/0.72      inference('cnf', [status(esa)], [t30_orders_2])).
% 0.52/0.72  thf('31', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (v5_orders_2 @ sk_A)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | ~ (r1_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | ~ (r2_orders_2 @ sk_A @ X0 @ sk_B_1))),
% 0.52/0.72      inference('sup-', [status(thm)], ['29', '30'])).
% 0.52/0.72  thf('32', plain, ((v5_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('33', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('34', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | ~ (r1_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | ~ (r2_orders_2 @ sk_A @ X0 @ sk_B_1))),
% 0.52/0.72      inference('demod', [status(thm)], ['31', '32', '33'])).
% 0.52/0.72  thf('35', plain,
% 0.52/0.72      ((~ (r2_orders_2 @ sk_A @ 
% 0.52/0.72           (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_B_1)
% 0.52/0.72        | ~ (r1_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72             (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1))))),
% 0.52/0.72      inference('sup-', [status(thm)], ['28', '34'])).
% 0.52/0.72  thf('36', plain,
% 0.52/0.72      ((m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72        (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['26', '27'])).
% 0.52/0.72  thf('37', plain,
% 0.52/0.72      (![X3 : $i]: (((X3) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X3) @ X3))),
% 0.52/0.72      inference('cnf', [status(esa)], [t34_mcart_1])).
% 0.52/0.72  thf('38', plain,
% 0.52/0.72      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['2', '12'])).
% 0.52/0.72  thf(t57_orders_2, axiom,
% 0.52/0.72    (![A:$i]:
% 0.52/0.72     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.52/0.72       ( ![B:$i]:
% 0.52/0.72         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72           ( ![C:$i]:
% 0.52/0.72             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72               ( ![D:$i]:
% 0.52/0.72                 ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72                   ( ( r2_hidden @ B @ ( k3_orders_2 @ A @ D @ C ) ) <=>
% 0.52/0.72                     ( ( r2_orders_2 @ A @ B @ C ) & ( r2_hidden @ B @ D ) ) ) ) ) ) ) ) ) ))).
% 0.52/0.72  thf('39', plain,
% 0.52/0.72      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X20 @ (u1_struct_0 @ X21))
% 0.52/0.72          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (u1_struct_0 @ X21)))
% 0.52/0.72          | ~ (r2_hidden @ X20 @ (k3_orders_2 @ X21 @ X22 @ X23))
% 0.52/0.72          | (r2_hidden @ X20 @ X22)
% 0.52/0.72          | ~ (m1_subset_1 @ X23 @ (u1_struct_0 @ X21))
% 0.52/0.72          | ~ (l1_orders_2 @ X21)
% 0.52/0.72          | ~ (v5_orders_2 @ X21)
% 0.52/0.72          | ~ (v4_orders_2 @ X21)
% 0.52/0.72          | ~ (v3_orders_2 @ X21)
% 0.52/0.72          | (v2_struct_0 @ X21))),
% 0.52/0.72      inference('cnf', [status(esa)], [t57_orders_2])).
% 0.52/0.72  thf('40', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i]:
% 0.52/0.72         ((v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (v3_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v4_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v5_orders_2 @ sk_A)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r2_hidden @ X1 @ sk_D)
% 0.52/0.72          | ~ (r2_hidden @ X1 @ (k3_orders_2 @ sk_A @ sk_D @ X0))
% 0.52/0.72          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['38', '39'])).
% 0.52/0.72  thf('41', plain, ((v3_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('42', plain, ((v4_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('43', plain, ((v5_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('44', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('45', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i]:
% 0.52/0.72         ((v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r2_hidden @ X1 @ sk_D)
% 0.52/0.72          | ~ (r2_hidden @ X1 @ (k3_orders_2 @ sk_A @ sk_D @ X0))
% 0.52/0.72          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('demod', [status(thm)], ['40', '41', '42', '43', '44'])).
% 0.52/0.72  thf('46', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (((k3_orders_2 @ sk_A @ sk_D @ X0) = (k1_xboole_0))
% 0.52/0.72          | ~ (m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ X0)) @ 
% 0.52/0.72               (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r2_hidden @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ X0)) @ sk_D)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['37', '45'])).
% 0.52/0.72  thf('47', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | ~ (m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))
% 0.52/0.72        | (r2_hidden @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_D)
% 0.52/0.72        | ((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) = (k1_xboole_0)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['36', '46'])).
% 0.52/0.72  thf('48', plain, ((m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('49', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | (r2_hidden @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_D)
% 0.52/0.72        | ((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) = (k1_xboole_0)))),
% 0.52/0.72      inference('demod', [status(thm)], ['47', '48'])).
% 0.52/0.72  thf('50', plain, (((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) != (k1_xboole_0))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('51', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | (r2_hidden @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_D))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['49', '50'])).
% 0.52/0.72  thf('52', plain, (~ (v2_struct_0 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('53', plain,
% 0.52/0.72      ((r2_hidden @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_D)),
% 0.52/0.72      inference('clc', [status(thm)], ['51', '52'])).
% 0.52/0.72  thf('54', plain,
% 0.52/0.72      ((m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72        (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['26', '27'])).
% 0.52/0.72  thf('55', plain, (((sk_B_1) = (k1_funct_1 @ sk_C @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf(t80_orders_2, axiom,
% 0.52/0.72    (![A:$i]:
% 0.52/0.72     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72         ( v4_orders_2 @ A ) & ( v5_orders_2 @ A ) & ( l1_orders_2 @ A ) ) =>
% 0.52/0.72       ( ![B:$i]:
% 0.52/0.72         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72           ( ![C:$i]:
% 0.52/0.72             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.52/0.72               ( ![D:$i]:
% 0.52/0.72                 ( ( m1_orders_1 @ D @ ( k1_orders_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72                   ( ![E:$i]:
% 0.52/0.72                     ( ( m2_orders_2 @ E @ A @ D ) =>
% 0.52/0.72                       ( ( ( r2_hidden @ B @ E ) & 
% 0.52/0.72                           ( ( C ) = ( k1_funct_1 @ D @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.52/0.72                         ( r3_orders_2 @ A @ C @ B ) ) ) ) ) ) ) ) ) ) ))).
% 0.52/0.72  thf('56', plain,
% 0.52/0.72      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X24 @ (u1_struct_0 @ X25))
% 0.52/0.72          | ~ (m1_orders_1 @ X26 @ (k1_orders_1 @ (u1_struct_0 @ X25)))
% 0.52/0.72          | ((X27) != (k1_funct_1 @ X26 @ (u1_struct_0 @ X25)))
% 0.52/0.72          | (r3_orders_2 @ X25 @ X27 @ X24)
% 0.52/0.72          | ~ (r2_hidden @ X24 @ X28)
% 0.52/0.72          | ~ (m2_orders_2 @ X28 @ X25 @ X26)
% 0.52/0.72          | ~ (m1_subset_1 @ X27 @ (u1_struct_0 @ X25))
% 0.52/0.72          | ~ (l1_orders_2 @ X25)
% 0.52/0.72          | ~ (v5_orders_2 @ X25)
% 0.52/0.72          | ~ (v4_orders_2 @ X25)
% 0.52/0.72          | ~ (v3_orders_2 @ X25)
% 0.52/0.72          | (v2_struct_0 @ X25))),
% 0.52/0.72      inference('cnf', [status(esa)], [t80_orders_2])).
% 0.52/0.72  thf('57', plain,
% 0.52/0.72      (![X24 : $i, X25 : $i, X26 : $i, X28 : $i]:
% 0.52/0.72         ((v2_struct_0 @ X25)
% 0.52/0.72          | ~ (v3_orders_2 @ X25)
% 0.52/0.72          | ~ (v4_orders_2 @ X25)
% 0.52/0.72          | ~ (v5_orders_2 @ X25)
% 0.52/0.72          | ~ (l1_orders_2 @ X25)
% 0.52/0.72          | ~ (m1_subset_1 @ (k1_funct_1 @ X26 @ (u1_struct_0 @ X25)) @ 
% 0.52/0.72               (u1_struct_0 @ X25))
% 0.52/0.72          | ~ (m2_orders_2 @ X28 @ X25 @ X26)
% 0.52/0.72          | ~ (r2_hidden @ X24 @ X28)
% 0.52/0.72          | (r3_orders_2 @ X25 @ (k1_funct_1 @ X26 @ (u1_struct_0 @ X25)) @ X24)
% 0.52/0.72          | ~ (m1_orders_1 @ X26 @ (k1_orders_1 @ (u1_struct_0 @ X25)))
% 0.52/0.72          | ~ (m1_subset_1 @ X24 @ (u1_struct_0 @ X25)))),
% 0.52/0.72      inference('simplify', [status(thm)], ['56'])).
% 0.52/0.72  thf('58', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | ~ (m1_orders_1 @ sk_C @ (k1_orders_1 @ (u1_struct_0 @ sk_A)))
% 0.52/0.72          | (r3_orders_2 @ sk_A @ (k1_funct_1 @ sk_C @ (u1_struct_0 @ sk_A)) @ 
% 0.52/0.72             X0)
% 0.52/0.72          | ~ (r2_hidden @ X0 @ X1)
% 0.52/0.72          | ~ (m2_orders_2 @ X1 @ sk_A @ sk_C)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v5_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v4_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v3_orders_2 @ sk_A)
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['55', '57'])).
% 0.52/0.72  thf('59', plain, ((m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('60', plain,
% 0.52/0.72      ((m1_orders_1 @ sk_C @ (k1_orders_1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('61', plain, (((sk_B_1) = (k1_funct_1 @ sk_C @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('62', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('63', plain, ((v5_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('64', plain, ((v4_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('65', plain, ((v3_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('66', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r3_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | ~ (r2_hidden @ X0 @ X1)
% 0.52/0.72          | ~ (m2_orders_2 @ X1 @ sk_A @ sk_C)
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('demod', [status(thm)],
% 0.52/0.72                ['58', '59', '60', '61', '62', '63', '64', '65'])).
% 0.52/0.72  thf('67', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (m2_orders_2 @ X0 @ sk_A @ sk_C)
% 0.52/0.72          | ~ (r2_hidden @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ X0)
% 0.52/0.72          | (r3_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72             (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1))))),
% 0.52/0.72      inference('sup-', [status(thm)], ['54', '66'])).
% 0.52/0.72  thf('68', plain,
% 0.52/0.72      (((r3_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72         (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)))
% 0.52/0.72        | ~ (m2_orders_2 @ sk_D @ sk_A @ sk_C)
% 0.52/0.72        | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['53', '67'])).
% 0.52/0.72  thf('69', plain, ((m2_orders_2 @ sk_D @ sk_A @ sk_C)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('70', plain,
% 0.52/0.72      (((r3_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72         (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)))
% 0.52/0.72        | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('demod', [status(thm)], ['68', '69'])).
% 0.52/0.72  thf('71', plain, (~ (v2_struct_0 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('72', plain,
% 0.52/0.72      ((r3_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72        (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)))),
% 0.52/0.72      inference('clc', [status(thm)], ['70', '71'])).
% 0.52/0.72  thf('73', plain, ((m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf(redefinition_r3_orders_2, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i]:
% 0.52/0.72     ( ( ( ~( v2_struct_0 @ A ) ) & ( v3_orders_2 @ A ) & 
% 0.52/0.72         ( l1_orders_2 @ A ) & ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) & 
% 0.52/0.72         ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) ) =>
% 0.52/0.72       ( ( r3_orders_2 @ A @ B @ C ) <=> ( r1_orders_2 @ A @ B @ C ) ) ))).
% 0.52/0.72  thf('74', plain,
% 0.52/0.72      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X14 @ (u1_struct_0 @ X15))
% 0.52/0.72          | ~ (l1_orders_2 @ X15)
% 0.52/0.72          | ~ (v3_orders_2 @ X15)
% 0.52/0.72          | (v2_struct_0 @ X15)
% 0.52/0.72          | ~ (m1_subset_1 @ X16 @ (u1_struct_0 @ X15))
% 0.52/0.72          | (r1_orders_2 @ X15 @ X14 @ X16)
% 0.52/0.72          | ~ (r3_orders_2 @ X15 @ X14 @ X16))),
% 0.52/0.72      inference('cnf', [status(esa)], [redefinition_r3_orders_2])).
% 0.52/0.72  thf('75', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (r3_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | (r1_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (v3_orders_2 @ sk_A)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['73', '74'])).
% 0.52/0.72  thf('76', plain, ((v3_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('77', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('78', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (~ (r3_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | (r1_orders_2 @ sk_A @ sk_B_1 @ X0)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('demod', [status(thm)], ['75', '76', '77'])).
% 0.52/0.72  thf('79', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | ~ (m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72             (u1_struct_0 @ sk_A))
% 0.52/0.72        | (r1_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72           (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1))))),
% 0.52/0.72      inference('sup-', [status(thm)], ['72', '78'])).
% 0.52/0.72  thf('80', plain,
% 0.52/0.72      ((m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72        (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['26', '27'])).
% 0.52/0.72  thf('81', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | (r1_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72           (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1))))),
% 0.52/0.72      inference('demod', [status(thm)], ['79', '80'])).
% 0.52/0.72  thf('82', plain, (~ (v2_struct_0 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('83', plain,
% 0.52/0.72      ((r1_orders_2 @ sk_A @ sk_B_1 @ 
% 0.52/0.72        (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)))),
% 0.52/0.72      inference('clc', [status(thm)], ['81', '82'])).
% 0.52/0.72  thf('84', plain,
% 0.52/0.72      (~ (r2_orders_2 @ sk_A @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72          sk_B_1)),
% 0.52/0.72      inference('demod', [status(thm)], ['35', '83'])).
% 0.52/0.72  thf('85', plain,
% 0.52/0.72      ((m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72        (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['26', '27'])).
% 0.52/0.72  thf('86', plain,
% 0.52/0.72      (![X3 : $i]: (((X3) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X3) @ X3))),
% 0.52/0.72      inference('cnf', [status(esa)], [t34_mcart_1])).
% 0.52/0.72  thf('87', plain,
% 0.52/0.72      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['2', '12'])).
% 0.52/0.72  thf('88', plain,
% 0.52/0.72      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.52/0.72         (~ (m1_subset_1 @ X20 @ (u1_struct_0 @ X21))
% 0.52/0.72          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (u1_struct_0 @ X21)))
% 0.52/0.72          | ~ (r2_hidden @ X20 @ (k3_orders_2 @ X21 @ X22 @ X23))
% 0.52/0.72          | (r2_orders_2 @ X21 @ X20 @ X23)
% 0.52/0.72          | ~ (m1_subset_1 @ X23 @ (u1_struct_0 @ X21))
% 0.52/0.72          | ~ (l1_orders_2 @ X21)
% 0.52/0.72          | ~ (v5_orders_2 @ X21)
% 0.52/0.72          | ~ (v4_orders_2 @ X21)
% 0.52/0.72          | ~ (v3_orders_2 @ X21)
% 0.52/0.72          | (v2_struct_0 @ X21))),
% 0.52/0.72      inference('cnf', [status(esa)], [t57_orders_2])).
% 0.52/0.72  thf('89', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i]:
% 0.52/0.72         ((v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (v3_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v4_orders_2 @ sk_A)
% 0.52/0.72          | ~ (v5_orders_2 @ sk_A)
% 0.52/0.72          | ~ (l1_orders_2 @ sk_A)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r2_orders_2 @ sk_A @ X1 @ X0)
% 0.52/0.72          | ~ (r2_hidden @ X1 @ (k3_orders_2 @ sk_A @ sk_D @ X0))
% 0.52/0.72          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['87', '88'])).
% 0.52/0.72  thf('90', plain, ((v3_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('91', plain, ((v4_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('92', plain, ((v5_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('93', plain, ((l1_orders_2 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('94', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i]:
% 0.52/0.72         ((v2_struct_0 @ sk_A)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r2_orders_2 @ sk_A @ X1 @ X0)
% 0.52/0.72          | ~ (r2_hidden @ X1 @ (k3_orders_2 @ sk_A @ sk_D @ X0))
% 0.52/0.72          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_A)))),
% 0.52/0.72      inference('demod', [status(thm)], ['89', '90', '91', '92', '93'])).
% 0.52/0.72  thf('95', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         (((k3_orders_2 @ sk_A @ sk_D @ X0) = (k1_xboole_0))
% 0.52/0.72          | ~ (m1_subset_1 @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ X0)) @ 
% 0.52/0.72               (u1_struct_0 @ sk_A))
% 0.52/0.72          | (r2_orders_2 @ sk_A @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ X0)) @ 
% 0.52/0.72             X0)
% 0.52/0.72          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.52/0.72          | (v2_struct_0 @ sk_A))),
% 0.52/0.72      inference('sup-', [status(thm)], ['86', '94'])).
% 0.52/0.72  thf('96', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | ~ (m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))
% 0.52/0.72        | (r2_orders_2 @ sk_A @ 
% 0.52/0.72           (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_B_1)
% 0.52/0.72        | ((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) = (k1_xboole_0)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['85', '95'])).
% 0.52/0.72  thf('97', plain, ((m1_subset_1 @ sk_B_1 @ (u1_struct_0 @ sk_A))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('98', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | (r2_orders_2 @ sk_A @ 
% 0.52/0.72           (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_B_1)
% 0.52/0.72        | ((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) = (k1_xboole_0)))),
% 0.52/0.72      inference('demod', [status(thm)], ['96', '97'])).
% 0.52/0.72  thf('99', plain, (((k3_orders_2 @ sk_A @ sk_D @ sk_B_1) != (k1_xboole_0))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('100', plain,
% 0.52/0.72      (((v2_struct_0 @ sk_A)
% 0.52/0.72        | (r2_orders_2 @ sk_A @ 
% 0.52/0.72           (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ sk_B_1))),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['98', '99'])).
% 0.52/0.72  thf('101', plain, (~ (v2_struct_0 @ sk_A)),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('102', plain,
% 0.52/0.72      ((r2_orders_2 @ sk_A @ (sk_B @ (k3_orders_2 @ sk_A @ sk_D @ sk_B_1)) @ 
% 0.52/0.72        sk_B_1)),
% 0.52/0.72      inference('clc', [status(thm)], ['100', '101'])).
% 0.52/0.72  thf('103', plain, ($false), inference('demod', [status(thm)], ['84', '102'])).
% 0.52/0.72  
% 0.52/0.72  % SZS output end Refutation
% 0.52/0.72  
% 0.52/0.73  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
