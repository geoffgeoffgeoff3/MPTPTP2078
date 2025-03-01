%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.0bkquqzUcT

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:12:28 EST 2020

% Result     : Theorem 0.45s
% Output     : Refutation 0.55s
% Verified   : 
% Statistics : Number of formulae       :   98 ( 180 expanded)
%              Number of leaves         :   34 (  69 expanded)
%              Depth                    :   14
%              Number of atoms          :  594 (1331 expanded)
%              Number of equality atoms :   29 (  55 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(k9_subset_1_type,type,(
    k9_subset_1: $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(v2_tex_2_type,type,(
    v2_tex_2: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(t35_tex_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ( v1_xboole_0 @ B )
            & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( v2_tex_2 @ B @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( ( v1_xboole_0 @ B )
              & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
           => ( v2_tex_2 @ B @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t35_tex_2])).

thf('0',plain,(
    ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    v1_xboole_0 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l13_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( A = k1_xboole_0 ) ) )).

thf('2',plain,(
    ! [X7: $i] :
      ( ( X7 = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X7 ) ) ),
    inference(cnf,[status(esa)],[l13_xboole_0])).

thf('3',plain,(
    sk_B_1 = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( v2_tex_2 @ k1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('5',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('6',plain,(
    ! [X4: $i,X6: $i] :
      ( ( r1_tarski @ X4 @ X6 )
      | ( r2_hidden @ ( sk_C @ X6 @ X4 ) @ X4 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('9',plain,(
    ! [X22: $i,X24: $i] :
      ( ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ X24 ) )
      | ~ ( r1_tarski @ X22 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X1 )
      | ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(cc1_tops_1,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v1_xboole_0 @ B )
           => ( v3_pre_topc @ B @ A ) ) ) ) )).

thf('11',plain,(
    ! [X31: $i,X32: $i] :
      ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X32 ) ) )
      | ( v3_pre_topc @ X31 @ X32 )
      | ~ ( v1_xboole_0 @ X31 )
      | ~ ( l1_pre_topc @ X32 )
      | ~ ( v2_pre_topc @ X32 ) ) ),
    inference(cnf,[status(esa)],[cc1_tops_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X1 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v1_xboole_0 @ X1 )
      | ( v3_pre_topc @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v3_pre_topc @ X1 @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ~ ( v2_pre_topc @ sk_A )
      | ( v3_pre_topc @ X0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['5','13'])).

thf('15',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ( v3_pre_topc @ X0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['14','15'])).

thf(t4_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('17',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf('18',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf(d5_tex_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v2_tex_2 @ B @ A )
          <=> ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
               => ~ ( ( r1_tarski @ C @ B )
                    & ! [D: $i] :
                        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                       => ~ ( ( v3_pre_topc @ D @ A )
                            & ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D )
                              = C ) ) ) ) ) ) ) ) )).

thf('19',plain,(
    ! [X33: $i,X34: $i,X36: $i] :
      ( ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X34 ) ) )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X34 ) ) )
      | ~ ( v3_pre_topc @ X36 @ X34 )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ X34 ) @ X33 @ X36 )
       != ( sk_C_1 @ X33 @ X34 ) )
      | ( v2_tex_2 @ X33 @ X34 )
      | ~ ( l1_pre_topc @ X34 ) ) ),
    inference(cnf,[status(esa)],[d5_tex_2])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ( v2_tex_2 @ k1_xboole_0 @ X0 )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ X0 ) @ k1_xboole_0 @ X1 )
       != ( sk_C_1 @ k1_xboole_0 @ X0 ) )
      | ~ ( v3_pre_topc @ X1 @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( v3_pre_topc @ k1_xboole_0 @ X0 )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ X0 ) @ k1_xboole_0 @ k1_xboole_0 )
       != ( sk_C_1 @ k1_xboole_0 @ X0 ) )
      | ( v2_tex_2 @ k1_xboole_0 @ X0 )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','20'])).

thf('22',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf(redefinition_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( ( k9_subset_1 @ A @ B @ C )
        = ( k3_xboole_0 @ B @ C ) ) ) )).

thf('23',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( ( k9_subset_1 @ X20 @ X18 @ X19 )
        = ( k3_xboole_0 @ X18 @ X19 ) )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_subset_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k9_subset_1 @ X0 @ X1 @ k1_xboole_0 )
      = ( k3_xboole_0 @ X1 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    v1_xboole_0 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    sk_B_1 = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','2'])).

thf('27',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(demod,[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(dt_k2_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ) )).

thf('29',plain,(
    ! [X11: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ X11 ) @ ( k1_zfmisc_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_subset_1])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('30',plain,(
    ! [X10: $i] :
      ( ( k2_subset_1 @ X10 )
      = X10 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('31',plain,(
    ! [X11: $i] :
      ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ X11 ) ) ),
    inference(demod,[status(thm)],['29','30'])).

thf(dt_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k9_subset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('32',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( m1_subset_1 @ ( k9_subset_1 @ X12 @ X13 @ X14 ) @ ( k1_zfmisc_1 @ X12 ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k9_subset_1])).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( m1_subset_1 @ ( k9_subset_1 @ X0 @ X1 @ X0 ) @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X11: $i] :
      ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ X11 ) ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('35',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( ( k9_subset_1 @ X20 @ X18 @ X19 )
        = ( k3_xboole_0 @ X18 @ X19 ) )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_subset_1])).

thf('36',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k9_subset_1 @ X0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( m1_subset_1 @ ( k3_xboole_0 @ X1 @ X0 ) @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['33','36'])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('38',plain,(
    ! [X28: $i,X29: $i,X30: $i] :
      ( ~ ( r2_hidden @ X28 @ X29 )
      | ~ ( v1_xboole_0 @ X30 )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X30 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('39',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ~ ( r2_hidden @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( v1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['28','39'])).

thf('41',plain,(
    ! [X7: $i] :
      ( ( X7 = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X7 ) ) ),
    inference(cnf,[status(esa)],[l13_xboole_0])).

thf('42',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ( ( k3_xboole_0 @ X1 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['27','42'])).

thf('44',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k9_subset_1 @ X0 @ X1 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['24','43'])).

thf('45',plain,(
    ! [X0: $i] :
      ( ~ ( v3_pre_topc @ k1_xboole_0 @ X0 )
      | ( k1_xboole_0
       != ( sk_C_1 @ k1_xboole_0 @ X0 ) )
      | ( v2_tex_2 @ k1_xboole_0 @ X0 )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference(demod,[status(thm)],['21','44'])).

thf('46',plain,
    ( ~ ( v1_xboole_0 @ k1_xboole_0 )
    | ~ ( l1_pre_topc @ sk_A )
    | ( v2_tex_2 @ k1_xboole_0 @ sk_A )
    | ( k1_xboole_0
     != ( sk_C_1 @ k1_xboole_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','45'])).

thf('47',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(demod,[status(thm)],['25','26'])).

thf('48',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf('50',plain,(
    ! [X33: $i,X34: $i] :
      ( ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X34 ) ) )
      | ( r1_tarski @ ( sk_C_1 @ X33 @ X34 ) @ X33 )
      | ( v2_tex_2 @ X33 @ X34 )
      | ~ ( l1_pre_topc @ X34 ) ) ),
    inference(cnf,[status(esa)],[d5_tex_2])).

thf('51',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ( v2_tex_2 @ k1_xboole_0 @ X0 )
      | ( r1_tarski @ ( sk_C_1 @ k1_xboole_0 @ X0 ) @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('52',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k3_xboole_0 @ X8 @ X9 )
        = X8 )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('53',plain,(
    ! [X0: $i] :
      ( ( v2_tex_2 @ k1_xboole_0 @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( ( k3_xboole_0 @ ( sk_C_1 @ k1_xboole_0 @ X0 ) @ k1_xboole_0 )
        = ( sk_C_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['27','42'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ( v2_tex_2 @ k1_xboole_0 @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( k1_xboole_0
        = ( sk_C_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['53','54'])).

thf('56',plain,(
    ~ ( v2_tex_2 @ k1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('57',plain,
    ( ( k1_xboole_0
      = ( sk_C_1 @ k1_xboole_0 @ sk_A ) )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('59',plain,
    ( k1_xboole_0
    = ( sk_C_1 @ k1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['57','58'])).

thf('60',plain,
    ( ( v2_tex_2 @ k1_xboole_0 @ sk_A )
    | ( k1_xboole_0 != k1_xboole_0 ) ),
    inference(demod,[status(thm)],['46','47','48','59'])).

thf('61',plain,(
    v2_tex_2 @ k1_xboole_0 @ sk_A ),
    inference(simplify,[status(thm)],['60'])).

thf('62',plain,(
    $false ),
    inference(demod,[status(thm)],['4','61'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.0bkquqzUcT
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:26:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.45/0.71  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.45/0.71  % Solved by: fo/fo7.sh
% 0.45/0.71  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.45/0.71  % done 571 iterations in 0.261s
% 0.45/0.71  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.45/0.71  % SZS output start Refutation
% 0.45/0.71  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.45/0.71  thf(k9_subset_1_type, type, k9_subset_1: $i > $i > $i > $i).
% 0.45/0.71  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.45/0.71  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.45/0.71  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.45/0.71  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.45/0.71  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 0.45/0.71  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.45/0.71  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.45/0.71  thf(sk_B_type, type, sk_B: $i > $i).
% 0.45/0.71  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.45/0.71  thf(v2_tex_2_type, type, v2_tex_2: $i > $i > $o).
% 0.45/0.71  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.45/0.71  thf(sk_A_type, type, sk_A: $i).
% 0.45/0.71  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.45/0.71  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.45/0.71  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.45/0.71  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.45/0.71  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.45/0.71  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.45/0.71  thf(t35_tex_2, conjecture,
% 0.45/0.71    (![A:$i]:
% 0.45/0.71     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.45/0.71       ( ![B:$i]:
% 0.45/0.71         ( ( ( v1_xboole_0 @ B ) & 
% 0.45/0.71             ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.45/0.71           ( v2_tex_2 @ B @ A ) ) ) ))).
% 0.45/0.71  thf(zf_stmt_0, negated_conjecture,
% 0.45/0.71    (~( ![A:$i]:
% 0.45/0.71        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.45/0.71            ( l1_pre_topc @ A ) ) =>
% 0.45/0.71          ( ![B:$i]:
% 0.45/0.71            ( ( ( v1_xboole_0 @ B ) & 
% 0.45/0.71                ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.45/0.71              ( v2_tex_2 @ B @ A ) ) ) ) )),
% 0.45/0.71    inference('cnf.neg', [status(esa)], [t35_tex_2])).
% 0.45/0.71  thf('0', plain, (~ (v2_tex_2 @ sk_B_1 @ sk_A)),
% 0.45/0.71      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.71  thf('1', plain, ((v1_xboole_0 @ sk_B_1)),
% 0.55/0.71      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.71  thf(l13_xboole_0, axiom,
% 0.55/0.71    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( ( A ) = ( k1_xboole_0 ) ) ))).
% 0.55/0.71  thf('2', plain,
% 0.55/0.71      (![X7 : $i]: (((X7) = (k1_xboole_0)) | ~ (v1_xboole_0 @ X7))),
% 0.55/0.71      inference('cnf', [status(esa)], [l13_xboole_0])).
% 0.55/0.71  thf('3', plain, (((sk_B_1) = (k1_xboole_0))),
% 0.55/0.71      inference('sup-', [status(thm)], ['1', '2'])).
% 0.55/0.71  thf('4', plain, (~ (v2_tex_2 @ k1_xboole_0 @ sk_A)),
% 0.55/0.71      inference('demod', [status(thm)], ['0', '3'])).
% 0.55/0.71  thf('5', plain, ((l1_pre_topc @ sk_A)),
% 0.55/0.71      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.71  thf(d3_tarski, axiom,
% 0.55/0.71    (![A:$i,B:$i]:
% 0.55/0.71     ( ( r1_tarski @ A @ B ) <=>
% 0.55/0.71       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.55/0.71  thf('6', plain,
% 0.55/0.71      (![X4 : $i, X6 : $i]:
% 0.55/0.71         ((r1_tarski @ X4 @ X6) | (r2_hidden @ (sk_C @ X6 @ X4) @ X4))),
% 0.55/0.71      inference('cnf', [status(esa)], [d3_tarski])).
% 0.55/0.71  thf(d1_xboole_0, axiom,
% 0.55/0.71    (![A:$i]:
% 0.55/0.71     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.55/0.71  thf('7', plain,
% 0.55/0.71      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.55/0.71      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.55/0.71  thf('8', plain,
% 0.55/0.71      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ~ (v1_xboole_0 @ X0))),
% 0.55/0.71      inference('sup-', [status(thm)], ['6', '7'])).
% 0.55/0.71  thf(t3_subset, axiom,
% 0.55/0.71    (![A:$i,B:$i]:
% 0.55/0.71     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.55/0.71  thf('9', plain,
% 0.55/0.71      (![X22 : $i, X24 : $i]:
% 0.55/0.71         ((m1_subset_1 @ X22 @ (k1_zfmisc_1 @ X24)) | ~ (r1_tarski @ X22 @ X24))),
% 0.55/0.71      inference('cnf', [status(esa)], [t3_subset])).
% 0.55/0.71  thf('10', plain,
% 0.55/0.71      (![X0 : $i, X1 : $i]:
% 0.55/0.71         (~ (v1_xboole_0 @ X1) | (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X0)))),
% 0.55/0.71      inference('sup-', [status(thm)], ['8', '9'])).
% 0.55/0.71  thf(cc1_tops_1, axiom,
% 0.55/0.71    (![A:$i]:
% 0.55/0.71     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.55/0.71       ( ![B:$i]:
% 0.55/0.71         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.55/0.71           ( ( v1_xboole_0 @ B ) => ( v3_pre_topc @ B @ A ) ) ) ) ))).
% 0.55/0.71  thf('11', plain,
% 0.55/0.71      (![X31 : $i, X32 : $i]:
% 0.55/0.71         (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ X32)))
% 0.55/0.71          | (v3_pre_topc @ X31 @ X32)
% 0.55/0.71          | ~ (v1_xboole_0 @ X31)
% 0.55/0.71          | ~ (l1_pre_topc @ X32)
% 0.55/0.71          | ~ (v2_pre_topc @ X32))),
% 0.55/0.71      inference('cnf', [status(esa)], [cc1_tops_1])).
% 0.55/0.71  thf('12', plain,
% 0.55/0.71      (![X0 : $i, X1 : $i]:
% 0.55/0.71         (~ (v1_xboole_0 @ X1)
% 0.55/0.71          | ~ (v2_pre_topc @ X0)
% 0.55/0.71          | ~ (l1_pre_topc @ X0)
% 0.55/0.71          | ~ (v1_xboole_0 @ X1)
% 0.55/0.71          | (v3_pre_topc @ X1 @ X0))),
% 0.55/0.71      inference('sup-', [status(thm)], ['10', '11'])).
% 0.55/0.71  thf('13', plain,
% 0.55/0.71      (![X0 : $i, X1 : $i]:
% 0.55/0.71         ((v3_pre_topc @ X1 @ X0)
% 0.55/0.71          | ~ (l1_pre_topc @ X0)
% 0.55/0.71          | ~ (v2_pre_topc @ X0)
% 0.55/0.71          | ~ (v1_xboole_0 @ X1))),
% 0.55/0.71      inference('simplify', [status(thm)], ['12'])).
% 0.55/0.71  thf('14', plain,
% 0.55/0.71      (![X0 : $i]:
% 0.55/0.71         (~ (v1_xboole_0 @ X0)
% 0.55/0.71          | ~ (v2_pre_topc @ sk_A)
% 0.55/0.71          | (v3_pre_topc @ X0 @ sk_A))),
% 0.55/0.71      inference('sup-', [status(thm)], ['5', '13'])).
% 0.55/0.71  thf('15', plain, ((v2_pre_topc @ sk_A)),
% 0.55/0.71      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.71  thf('16', plain,
% 0.55/0.71      (![X0 : $i]: (~ (v1_xboole_0 @ X0) | (v3_pre_topc @ X0 @ sk_A))),
% 0.55/0.71      inference('demod', [status(thm)], ['14', '15'])).
% 0.55/0.71  thf(t4_subset_1, axiom,
% 0.55/0.71    (![A:$i]: ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ))).
% 0.55/0.71  thf('17', plain,
% 0.55/0.71      (![X21 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X21))),
% 0.55/0.71      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.55/0.71  thf('18', plain,
% 0.55/0.71      (![X21 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X21))),
% 0.55/0.71      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.55/0.71  thf(d5_tex_2, axiom,
% 0.55/0.71    (![A:$i]:
% 0.55/0.71     ( ( l1_pre_topc @ A ) =>
% 0.55/0.71       ( ![B:$i]:
% 0.55/0.71         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.55/0.71           ( ( v2_tex_2 @ B @ A ) <=>
% 0.55/0.71             ( ![C:$i]:
% 0.55/0.71               ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.55/0.71                 ( ~( ( r1_tarski @ C @ B ) & 
% 0.55/0.71                      ( ![D:$i]:
% 0.55/0.71                        ( ( m1_subset_1 @
% 0.55/0.71                            D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.55/0.71                          ( ~( ( v3_pre_topc @ D @ A ) & 
% 0.55/0.72                               ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D ) =
% 0.55/0.72                                 ( C ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.55/0.72  thf('19', plain,
% 0.55/0.72      (![X33 : $i, X34 : $i, X36 : $i]:
% 0.55/0.72         (~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ (u1_struct_0 @ X34)))
% 0.55/0.72          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (u1_struct_0 @ X34)))
% 0.55/0.72          | ~ (v3_pre_topc @ X36 @ X34)
% 0.55/0.72          | ((k9_subset_1 @ (u1_struct_0 @ X34) @ X33 @ X36)
% 0.55/0.72              != (sk_C_1 @ X33 @ X34))
% 0.55/0.72          | (v2_tex_2 @ X33 @ X34)
% 0.55/0.72          | ~ (l1_pre_topc @ X34))),
% 0.55/0.72      inference('cnf', [status(esa)], [d5_tex_2])).
% 0.55/0.72  thf('20', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         (~ (l1_pre_topc @ X0)
% 0.55/0.72          | (v2_tex_2 @ k1_xboole_0 @ X0)
% 0.55/0.72          | ((k9_subset_1 @ (u1_struct_0 @ X0) @ k1_xboole_0 @ X1)
% 0.55/0.72              != (sk_C_1 @ k1_xboole_0 @ X0))
% 0.55/0.72          | ~ (v3_pre_topc @ X1 @ X0)
% 0.55/0.72          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X0))))),
% 0.55/0.72      inference('sup-', [status(thm)], ['18', '19'])).
% 0.55/0.72  thf('21', plain,
% 0.55/0.72      (![X0 : $i]:
% 0.55/0.72         (~ (v3_pre_topc @ k1_xboole_0 @ X0)
% 0.55/0.72          | ((k9_subset_1 @ (u1_struct_0 @ X0) @ k1_xboole_0 @ k1_xboole_0)
% 0.55/0.72              != (sk_C_1 @ k1_xboole_0 @ X0))
% 0.55/0.72          | (v2_tex_2 @ k1_xboole_0 @ X0)
% 0.55/0.72          | ~ (l1_pre_topc @ X0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['17', '20'])).
% 0.55/0.72  thf('22', plain,
% 0.55/0.72      (![X21 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X21))),
% 0.55/0.72      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.55/0.72  thf(redefinition_k9_subset_1, axiom,
% 0.55/0.72    (![A:$i,B:$i,C:$i]:
% 0.55/0.72     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.55/0.72       ( ( k9_subset_1 @ A @ B @ C ) = ( k3_xboole_0 @ B @ C ) ) ))).
% 0.55/0.72  thf('23', plain,
% 0.55/0.72      (![X18 : $i, X19 : $i, X20 : $i]:
% 0.55/0.72         (((k9_subset_1 @ X20 @ X18 @ X19) = (k3_xboole_0 @ X18 @ X19))
% 0.55/0.72          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ X20)))),
% 0.55/0.72      inference('cnf', [status(esa)], [redefinition_k9_subset_1])).
% 0.55/0.72  thf('24', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         ((k9_subset_1 @ X0 @ X1 @ k1_xboole_0)
% 0.55/0.72           = (k3_xboole_0 @ X1 @ k1_xboole_0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['22', '23'])).
% 0.55/0.72  thf('25', plain, ((v1_xboole_0 @ sk_B_1)),
% 0.55/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.72  thf('26', plain, (((sk_B_1) = (k1_xboole_0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['1', '2'])).
% 0.55/0.72  thf('27', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.55/0.72      inference('demod', [status(thm)], ['25', '26'])).
% 0.55/0.72  thf('28', plain,
% 0.55/0.72      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.55/0.72      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.55/0.72  thf(dt_k2_subset_1, axiom,
% 0.55/0.72    (![A:$i]: ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ))).
% 0.55/0.72  thf('29', plain,
% 0.55/0.72      (![X11 : $i]: (m1_subset_1 @ (k2_subset_1 @ X11) @ (k1_zfmisc_1 @ X11))),
% 0.55/0.72      inference('cnf', [status(esa)], [dt_k2_subset_1])).
% 0.55/0.72  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.55/0.72  thf('30', plain, (![X10 : $i]: ((k2_subset_1 @ X10) = (X10))),
% 0.55/0.72      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.55/0.72  thf('31', plain, (![X11 : $i]: (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ X11))),
% 0.55/0.72      inference('demod', [status(thm)], ['29', '30'])).
% 0.55/0.72  thf(dt_k9_subset_1, axiom,
% 0.55/0.72    (![A:$i,B:$i,C:$i]:
% 0.55/0.72     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.55/0.72       ( m1_subset_1 @ ( k9_subset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.55/0.72  thf('32', plain,
% 0.55/0.72      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.55/0.72         ((m1_subset_1 @ (k9_subset_1 @ X12 @ X13 @ X14) @ (k1_zfmisc_1 @ X12))
% 0.55/0.72          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ X12)))),
% 0.55/0.72      inference('cnf', [status(esa)], [dt_k9_subset_1])).
% 0.55/0.72  thf('33', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         (m1_subset_1 @ (k9_subset_1 @ X0 @ X1 @ X0) @ (k1_zfmisc_1 @ X0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['31', '32'])).
% 0.55/0.72  thf('34', plain, (![X11 : $i]: (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ X11))),
% 0.55/0.72      inference('demod', [status(thm)], ['29', '30'])).
% 0.55/0.72  thf('35', plain,
% 0.55/0.72      (![X18 : $i, X19 : $i, X20 : $i]:
% 0.55/0.72         (((k9_subset_1 @ X20 @ X18 @ X19) = (k3_xboole_0 @ X18 @ X19))
% 0.55/0.72          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ X20)))),
% 0.55/0.72      inference('cnf', [status(esa)], [redefinition_k9_subset_1])).
% 0.55/0.72  thf('36', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         ((k9_subset_1 @ X0 @ X1 @ X0) = (k3_xboole_0 @ X1 @ X0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['34', '35'])).
% 0.55/0.72  thf('37', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         (m1_subset_1 @ (k3_xboole_0 @ X1 @ X0) @ (k1_zfmisc_1 @ X0))),
% 0.55/0.72      inference('demod', [status(thm)], ['33', '36'])).
% 0.55/0.72  thf(t5_subset, axiom,
% 0.55/0.72    (![A:$i,B:$i,C:$i]:
% 0.55/0.72     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.55/0.72          ( v1_xboole_0 @ C ) ) ))).
% 0.55/0.72  thf('38', plain,
% 0.55/0.72      (![X28 : $i, X29 : $i, X30 : $i]:
% 0.55/0.72         (~ (r2_hidden @ X28 @ X29)
% 0.55/0.72          | ~ (v1_xboole_0 @ X30)
% 0.55/0.72          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X30)))),
% 0.55/0.72      inference('cnf', [status(esa)], [t5_subset])).
% 0.55/0.72  thf('39', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.55/0.72         (~ (v1_xboole_0 @ X0) | ~ (r2_hidden @ X2 @ (k3_xboole_0 @ X1 @ X0)))),
% 0.55/0.72      inference('sup-', [status(thm)], ['37', '38'])).
% 0.55/0.72  thf('40', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         ((v1_xboole_0 @ (k3_xboole_0 @ X1 @ X0)) | ~ (v1_xboole_0 @ X0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['28', '39'])).
% 0.55/0.72  thf('41', plain,
% 0.55/0.72      (![X7 : $i]: (((X7) = (k1_xboole_0)) | ~ (v1_xboole_0 @ X7))),
% 0.55/0.72      inference('cnf', [status(esa)], [l13_xboole_0])).
% 0.55/0.72  thf('42', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         (~ (v1_xboole_0 @ X0) | ((k3_xboole_0 @ X1 @ X0) = (k1_xboole_0)))),
% 0.55/0.72      inference('sup-', [status(thm)], ['40', '41'])).
% 0.55/0.72  thf('43', plain,
% 0.55/0.72      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['27', '42'])).
% 0.55/0.72  thf('44', plain,
% 0.55/0.72      (![X0 : $i, X1 : $i]:
% 0.55/0.72         ((k9_subset_1 @ X0 @ X1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.55/0.72      inference('demod', [status(thm)], ['24', '43'])).
% 0.55/0.72  thf('45', plain,
% 0.55/0.72      (![X0 : $i]:
% 0.55/0.72         (~ (v3_pre_topc @ k1_xboole_0 @ X0)
% 0.55/0.72          | ((k1_xboole_0) != (sk_C_1 @ k1_xboole_0 @ X0))
% 0.55/0.72          | (v2_tex_2 @ k1_xboole_0 @ X0)
% 0.55/0.72          | ~ (l1_pre_topc @ X0))),
% 0.55/0.72      inference('demod', [status(thm)], ['21', '44'])).
% 0.55/0.72  thf('46', plain,
% 0.55/0.72      ((~ (v1_xboole_0 @ k1_xboole_0)
% 0.55/0.72        | ~ (l1_pre_topc @ sk_A)
% 0.55/0.72        | (v2_tex_2 @ k1_xboole_0 @ sk_A)
% 0.55/0.72        | ((k1_xboole_0) != (sk_C_1 @ k1_xboole_0 @ sk_A)))),
% 0.55/0.72      inference('sup-', [status(thm)], ['16', '45'])).
% 0.55/0.72  thf('47', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.55/0.72      inference('demod', [status(thm)], ['25', '26'])).
% 0.55/0.72  thf('48', plain, ((l1_pre_topc @ sk_A)),
% 0.55/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.72  thf('49', plain,
% 0.55/0.72      (![X21 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X21))),
% 0.55/0.72      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.55/0.72  thf('50', plain,
% 0.55/0.72      (![X33 : $i, X34 : $i]:
% 0.55/0.72         (~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ (u1_struct_0 @ X34)))
% 0.55/0.72          | (r1_tarski @ (sk_C_1 @ X33 @ X34) @ X33)
% 0.55/0.72          | (v2_tex_2 @ X33 @ X34)
% 0.55/0.72          | ~ (l1_pre_topc @ X34))),
% 0.55/0.72      inference('cnf', [status(esa)], [d5_tex_2])).
% 0.55/0.72  thf('51', plain,
% 0.55/0.72      (![X0 : $i]:
% 0.55/0.72         (~ (l1_pre_topc @ X0)
% 0.55/0.72          | (v2_tex_2 @ k1_xboole_0 @ X0)
% 0.55/0.72          | (r1_tarski @ (sk_C_1 @ k1_xboole_0 @ X0) @ k1_xboole_0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['49', '50'])).
% 0.55/0.72  thf(t28_xboole_1, axiom,
% 0.55/0.72    (![A:$i,B:$i]:
% 0.55/0.72     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.55/0.72  thf('52', plain,
% 0.55/0.72      (![X8 : $i, X9 : $i]:
% 0.55/0.72         (((k3_xboole_0 @ X8 @ X9) = (X8)) | ~ (r1_tarski @ X8 @ X9))),
% 0.55/0.72      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.55/0.72  thf('53', plain,
% 0.55/0.72      (![X0 : $i]:
% 0.55/0.72         ((v2_tex_2 @ k1_xboole_0 @ X0)
% 0.55/0.72          | ~ (l1_pre_topc @ X0)
% 0.55/0.72          | ((k3_xboole_0 @ (sk_C_1 @ k1_xboole_0 @ X0) @ k1_xboole_0)
% 0.55/0.72              = (sk_C_1 @ k1_xboole_0 @ X0)))),
% 0.55/0.72      inference('sup-', [status(thm)], ['51', '52'])).
% 0.55/0.72  thf('54', plain,
% 0.55/0.72      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.55/0.72      inference('sup-', [status(thm)], ['27', '42'])).
% 0.55/0.72  thf('55', plain,
% 0.55/0.72      (![X0 : $i]:
% 0.55/0.72         ((v2_tex_2 @ k1_xboole_0 @ X0)
% 0.55/0.72          | ~ (l1_pre_topc @ X0)
% 0.55/0.72          | ((k1_xboole_0) = (sk_C_1 @ k1_xboole_0 @ X0)))),
% 0.55/0.72      inference('demod', [status(thm)], ['53', '54'])).
% 0.55/0.72  thf('56', plain, (~ (v2_tex_2 @ k1_xboole_0 @ sk_A)),
% 0.55/0.72      inference('demod', [status(thm)], ['0', '3'])).
% 0.55/0.72  thf('57', plain,
% 0.55/0.72      ((((k1_xboole_0) = (sk_C_1 @ k1_xboole_0 @ sk_A))
% 0.55/0.72        | ~ (l1_pre_topc @ sk_A))),
% 0.55/0.72      inference('sup-', [status(thm)], ['55', '56'])).
% 0.55/0.72  thf('58', plain, ((l1_pre_topc @ sk_A)),
% 0.55/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.55/0.72  thf('59', plain, (((k1_xboole_0) = (sk_C_1 @ k1_xboole_0 @ sk_A))),
% 0.55/0.72      inference('demod', [status(thm)], ['57', '58'])).
% 0.55/0.72  thf('60', plain,
% 0.55/0.72      (((v2_tex_2 @ k1_xboole_0 @ sk_A) | ((k1_xboole_0) != (k1_xboole_0)))),
% 0.55/0.72      inference('demod', [status(thm)], ['46', '47', '48', '59'])).
% 0.55/0.72  thf('61', plain, ((v2_tex_2 @ k1_xboole_0 @ sk_A)),
% 0.55/0.72      inference('simplify', [status(thm)], ['60'])).
% 0.55/0.72  thf('62', plain, ($false), inference('demod', [status(thm)], ['4', '61'])).
% 0.55/0.72  
% 0.55/0.72  % SZS output end Refutation
% 0.55/0.72  
% 0.55/0.72  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
