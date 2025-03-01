%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT1366+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.c1ajb7Q0la

% Computer   : n029.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:53:34 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  152 ( 246 expanded)
%              Number of leaves         :   26 (  79 expanded)
%              Depth                    :   29
%              Number of atoms          : 3518 (6590 expanded)
%              Number of equality atoms :   87 ( 129 expanded)
%              Maximal formula depth    :   28 (  11 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(v9_pre_topc_type,type,(
    v9_pre_topc: $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(v1_compts_1_type,type,(
    v1_compts_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v8_pre_topc_type,type,(
    v8_pre_topc: $i > $o )).

thf(v2_compts_1_type,type,(
    v2_compts_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i > $i )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(sk_E_1_type,type,(
    sk_E_1: $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(v4_pre_topc_type,type,(
    v4_pre_topc: $i > $i > $o )).

thf(t21_compts_1,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ( ( ( v8_pre_topc @ A )
          & ( v1_compts_1 @ A ) )
       => ( v9_pre_topc @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ( ( ( v8_pre_topc @ A )
            & ( v1_compts_1 @ A ) )
         => ( v9_pre_topc @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t21_compts_1])).

thf('0',plain,(
    ~ ( v9_pre_topc @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_compts_1,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ( ( v9_pre_topc @ A )
      <=> ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
               => ~ ( ( C != k1_xboole_0 )
                    & ( v4_pre_topc @ C @ A )
                    & ( r2_hidden @ B @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ C ) )
                    & ! [D: $i] :
                        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                       => ! [E: $i] :
                            ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                           => ~ ( ( v3_pre_topc @ D @ A )
                                & ( v3_pre_topc @ E @ A )
                                & ( r2_hidden @ B @ D )
                                & ( r1_tarski @ C @ E )
                                & ( r1_xboole_0 @ D @ E ) ) ) ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X0: $i] :
      ( ( v4_pre_topc @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf(t17_compts_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( ( v1_compts_1 @ A )
              & ( v4_pre_topc @ B @ A ) )
           => ( v2_compts_1 @ B @ A ) ) ) ) )).

thf('4',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X9 ) ) )
      | ( v2_compts_1 @ X8 @ X9 )
      | ~ ( v4_pre_topc @ X8 @ X9 )
      | ~ ( v1_compts_1 @ X9 )
      | ~ ( l1_pre_topc @ X9 ) ) ),
    inference(cnf,[status(esa)],[t17_compts_1])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ~ ( v4_pre_topc @ ( sk_C @ X0 ) @ X0 )
      | ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v4_pre_topc @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','6'])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf(t15_compts_1,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ( ( v8_pre_topc @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ( ( v2_compts_1 @ B @ A )
             => ( ( B = k1_xboole_0 )
                | ! [C: $i] :
                    ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
                   => ~ ( ( r2_hidden @ C @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) )
                        & ! [D: $i] :
                            ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                           => ! [E: $i] :
                                ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                               => ~ ( ( v3_pre_topc @ D @ A )
                                    & ( v3_pre_topc @ E @ A )
                                    & ( r2_hidden @ C @ D )
                                    & ( r1_tarski @ B @ E )
                                    & ( r1_xboole_0 @ D @ E ) ) ) ) ) ) ) ) ) ) ) )).

thf('12',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( v3_pre_topc @ ( sk_E_1 @ X7 @ X6 @ X5 ) @ X5 )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v3_pre_topc @ ( sk_E_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_E_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['10','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['9','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['8','18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('25',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( r1_tarski @ X6 @ ( sk_E_1 @ X7 @ X6 @ X5 ) )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['23','27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['22','29'])).

thf('31',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['30'])).

thf('32',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['21','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['32'])).

thf('34',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('36',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('38',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( m1_subset_1 @ ( sk_E_1 @ X7 @ X6 @ X5 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('39',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['36','40'])).

thf('42',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['35','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['43'])).

thf('45',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['34','44'])).

thf('46',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['45'])).

thf('47',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('48',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('49',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('50',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('51',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( r1_xboole_0 @ ( sk_D_1 @ X7 @ X6 @ X5 ) @ ( sk_E_1 @ X7 @ X6 @ X5 ) )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('52',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( r1_xboole_0 @ ( sk_D_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_xboole_0 @ ( sk_D_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['52'])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['49','53'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['54'])).

thf('56',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['48','55'])).

thf('57',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['56'])).

thf('58',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['47','57'])).

thf('59',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['58'])).

thf('60',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('61',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('62',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('63',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('64',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( v3_pre_topc @ ( sk_D_1 @ X7 @ X6 @ X5 ) @ X5 )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('65',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v3_pre_topc @ ( sk_D_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['63','64'])).

thf('66',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_D_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['65'])).

thf('67',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['62','66'])).

thf('68',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['67'])).

thf('69',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['61','68'])).

thf('70',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['69'])).

thf('71',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['60','70'])).

thf('72',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['71'])).

thf('73',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('74',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('75',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('76',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('77',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( r2_hidden @ X7 @ ( sk_D_1 @ X7 @ X6 @ X5 ) )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('78',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( r2_hidden @ X1 @ ( sk_D_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['76','77'])).

thf('79',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r2_hidden @ X1 @ ( sk_D_1 @ X1 @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( r2_hidden @ X1 @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['78'])).

thf('80',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['75','79'])).

thf('81',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['80'])).

thf('82',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['74','81'])).

thf('83',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['82'])).

thf('84',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['73','83'])).

thf('85',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['84'])).

thf('86',plain,(
    ! [X0: $i] :
      ( ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('87',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('88',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('89',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_B @ X0 ) @ ( k3_subset_1 @ ( u1_struct_0 @ X0 ) @ ( sk_C @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('90',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( v8_pre_topc @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( m1_subset_1 @ ( sk_D_1 @ X7 @ X6 @ X5 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ~ ( r2_hidden @ X7 @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X6 ) )
      | ~ ( m1_subset_1 @ X7 @ ( u1_struct_0 @ X5 ) )
      | ( X6 = k1_xboole_0 )
      | ~ ( v2_compts_1 @ X6 @ X5 )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t15_compts_1])).

thf('91',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['89','90'])).

thf('92',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ ( sk_C @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['91'])).

thf('93',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['88','92'])).

thf('94',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_subset_1 @ ( sk_B @ X0 ) @ ( u1_struct_0 @ X0 ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['93'])).

thf('95',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['87','94'])).

thf('96',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v2_compts_1 @ ( sk_C @ X0 ) @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['95'])).

thf('97',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['86','96'])).

thf('98',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( m1_subset_1 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['97'])).

thf('99',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( r2_hidden @ ( sk_B @ X0 ) @ X1 )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( r1_xboole_0 @ X1 @ X2 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X2 )
      | ~ ( v3_pre_topc @ X2 @ X0 )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('100',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X1 )
      | ~ ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X1 )
      | ~ ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['98','99'])).

thf('101',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ ( sk_B @ X0 ) @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X1 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X1 )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['100'])).

thf('102',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X1 )
      | ~ ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X1 )
      | ~ ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['85','101'])).

thf('103',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v3_pre_topc @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X1 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X1 )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['102'])).

thf('104',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X1 )
      | ~ ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['72','103'])).

thf('105',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ ( sk_D_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X1 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ X1 )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['104'])).

thf('106',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['59','105'])).

thf('107',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( m1_subset_1 @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['106'])).

thf('108',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ~ ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['46','107'])).

thf('109',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( sk_C @ X0 ) @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) )
      | ~ ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['108'])).

thf('110',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ~ ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['33','109'])).

thf('111',plain,(
    ! [X0: $i] :
      ( ~ ( v3_pre_topc @ ( sk_E_1 @ ( sk_B @ X0 ) @ ( sk_C @ X0 ) @ X0 ) @ X0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['110'])).

thf('112',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v8_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['20','111'])).

thf('113',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ( ( sk_C @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['112'])).

thf('114',plain,(
    ! [X0: $i] :
      ( ( ( sk_C @ X0 )
       != k1_xboole_0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(cnf,[status(esa)],[d5_compts_1])).

thf('115',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ~ ( v8_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( v9_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['113','114'])).

thf('116',plain,(
    ! [X0: $i] :
      ( ~ ( v8_pre_topc @ X0 )
      | ~ ( v1_compts_1 @ X0 )
      | ( v9_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['115'])).

thf('117',plain,
    ( ( v2_struct_0 @ sk_A )
    | ~ ( v2_pre_topc @ sk_A )
    | ( v9_pre_topc @ sk_A )
    | ~ ( v1_compts_1 @ sk_A )
    | ~ ( v8_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['1','116'])).

thf('118',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('119',plain,(
    v1_compts_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('120',plain,(
    v8_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('121',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v9_pre_topc @ sk_A ) ),
    inference(demod,[status(thm)],['117','118','119','120'])).

thf('122',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('123',plain,(
    v9_pre_topc @ sk_A ),
    inference(clc,[status(thm)],['121','122'])).

thf('124',plain,(
    $false ),
    inference(demod,[status(thm)],['0','123'])).


%------------------------------------------------------------------------------
