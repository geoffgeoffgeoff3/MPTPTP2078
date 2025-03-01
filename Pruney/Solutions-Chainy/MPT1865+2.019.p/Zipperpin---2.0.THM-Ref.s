%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.elBscUlFD8

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:12:23 EST 2020

% Result     : Theorem 0.36s
% Output     : Refutation 0.36s
% Verified   : 
% Statistics : Number of formulae       :   86 ( 265 expanded)
%              Number of leaves         :   21 (  86 expanded)
%              Depth                    :   13
%              Number of atoms          :  871 (5270 expanded)
%              Number of equality atoms :   21 ( 150 expanded)
%              Maximal formula depth    :   20 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v4_pre_topc_type,type,(
    v4_pre_topc: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k9_subset_1_type,type,(
    k9_subset_1: $i > $i > $i > $i )).

thf(v2_tex_2_type,type,(
    v2_tex_2: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(t33_tex_2,conjecture,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v2_tex_2 @ B @ A )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
               => ~ ( ( r2_hidden @ C @ B )
                    & ! [D: $i] :
                        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                       => ~ ( ( v4_pre_topc @ D @ A )
                            & ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D )
                              = ( k1_tarski @ C ) ) ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_pre_topc @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ( ( v2_tex_2 @ B @ A )
             => ! [C: $i] :
                  ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
                 => ~ ( ( r2_hidden @ C @ B )
                      & ! [D: $i] :
                          ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                         => ~ ( ( v4_pre_topc @ D @ A )
                              & ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D )
                                = ( k1_tarski @ C ) ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t33_tex_2])).

thf('0',plain,(
    m1_subset_1 @ sk_C_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t32_tex_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v2_tex_2 @ B @ A )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
               => ~ ( ( r2_hidden @ C @ B )
                    & ! [D: $i] :
                        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                       => ~ ( ( v3_pre_topc @ D @ A )
                            & ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D )
                              = ( k1_tarski @ C ) ) ) ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ X12 ) @ X11 @ ( sk_D_1 @ X13 @ X11 @ X12 ) )
        = ( k1_tarski @ X13 ) )
      | ~ ( r2_hidden @ X13 @ X11 )
      | ~ ( m1_subset_1 @ X13 @ ( u1_struct_0 @ X12 ) )
      | ~ ( v2_tex_2 @ X11 @ X12 )
      | ~ ( l1_pre_topc @ X12 ) ) ),
    inference(cnf,[status(esa)],[t32_tex_2])).

thf('3',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( v2_tex_2 @ sk_B @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ X0 @ sk_B @ sk_A ) )
        = ( k1_tarski @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    v2_tex_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ X0 @ sk_B @ sk_A ) )
        = ( k1_tarski @ X0 ) ) ) ),
    inference(demod,[status(thm)],['3','4','5'])).

thf('7',plain,
    ( ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) )
      = ( k1_tarski @ sk_C_1 ) )
    | ~ ( r2_hidden @ sk_C_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['0','6'])).

thf('8',plain,(
    r2_hidden @ sk_C_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) )
    = ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_C_1 @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) )
      | ( m1_subset_1 @ ( sk_D_1 @ X13 @ X11 @ X12 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) )
      | ~ ( r2_hidden @ X13 @ X11 )
      | ~ ( m1_subset_1 @ X13 @ ( u1_struct_0 @ X12 ) )
      | ~ ( v2_tex_2 @ X11 @ X12 )
      | ~ ( l1_pre_topc @ X12 ) ) ),
    inference(cnf,[status(esa)],[t32_tex_2])).

thf('13',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( v2_tex_2 @ sk_B @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B )
      | ( m1_subset_1 @ ( sk_D_1 @ X0 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    v2_tex_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_B )
      | ( m1_subset_1 @ ( sk_D_1 @ X0 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference(demod,[status(thm)],['13','14','15'])).

thf('17',plain,
    ( ( m1_subset_1 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( r2_hidden @ sk_C_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['10','16'])).

thf('18',plain,(
    r2_hidden @ sk_C_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    m1_subset_1 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf(dt_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k9_subset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('20',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ( m1_subset_1 @ ( k9_subset_1 @ X4 @ X5 @ X6 ) @ ( k1_zfmisc_1 @ X4 ) )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k9_subset_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    m1_subset_1 @ ( k1_tarski @ sk_C_1 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['9','21'])).

thf('23',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d6_tex_2,axiom,(
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
                       => ~ ( ( v4_pre_topc @ D @ A )
                            & ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D )
                              = C ) ) ) ) ) ) ) ) )).

thf('24',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( v2_tex_2 @ X7 @ X8 )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ X8 ) @ X7 @ ( sk_D @ X9 @ X7 @ X8 ) )
        = X9 )
      | ~ ( r1_tarski @ X9 @ X7 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( l1_pre_topc @ X8 ) ) ),
    inference(cnf,[status(esa)],[d6_tex_2])).

thf('25',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D @ X0 @ sk_B @ sk_A ) )
        = X0 )
      | ~ ( v2_tex_2 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    v2_tex_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D @ X0 @ sk_B @ sk_A ) )
        = X0 ) ) ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('29',plain,
    ( ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) )
      = ( k1_tarski @ sk_C_1 ) )
    | ~ ( r1_tarski @ ( k1_tarski @ sk_C_1 ) @ sk_B ) ),
    inference('sup-',[status(thm)],['22','28'])).

thf('30',plain,(
    r2_hidden @ sk_C_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ B )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('31',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X1 ) @ X3 )
      | ~ ( r2_hidden @ X1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[l1_zfmisc_1])).

thf('32',plain,(
    r1_tarski @ ( k1_tarski @ sk_C_1 ) @ sk_B ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) )
    = ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['29','32'])).

thf('34',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) )
    = ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('35',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('36',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( v2_tex_2 @ X7 @ X8 )
      | ( m1_subset_1 @ ( sk_D @ X9 @ X7 @ X8 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( r1_tarski @ X9 @ X7 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( l1_pre_topc @ X8 ) ) ),
    inference(cnf,[status(esa)],[d6_tex_2])).

thf('38',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ( m1_subset_1 @ ( sk_D @ X0 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( v2_tex_2 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    v2_tex_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ( m1_subset_1 @ ( sk_D @ X0 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference(demod,[status(thm)],['38','39','40'])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_D @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['35','41'])).

thf('43',plain,
    ( ~ ( r1_tarski @ ( k1_tarski @ sk_C_1 ) @ sk_B )
    | ( m1_subset_1 @ ( sk_D @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['34','42'])).

thf('44',plain,(
    r1_tarski @ ( k1_tarski @ sk_C_1 ) @ sk_B ),
    inference('sup-',[status(thm)],['30','31'])).

thf('45',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) )
    = ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('46',plain,(
    m1_subset_1 @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['43','44','45'])).

thf('47',plain,(
    ! [X14: $i] :
      ( ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ X14 )
       != ( k1_tarski @ sk_C_1 ) )
      | ~ ( v4_pre_topc @ X14 @ sk_A )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,
    ( ~ ( v4_pre_topc @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) @ sk_A )
    | ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) )
     != ( k1_tarski @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) )
    = ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('50',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('51',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( v2_tex_2 @ X7 @ X8 )
      | ( v4_pre_topc @ ( sk_D @ X9 @ X7 @ X8 ) @ X8 )
      | ~ ( r1_tarski @ X9 @ X7 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X8 ) ) )
      | ~ ( l1_pre_topc @ X8 ) ) ),
    inference(cnf,[status(esa)],[d6_tex_2])).

thf('53',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ( v4_pre_topc @ ( sk_D @ X0 @ sk_B @ sk_A ) @ sk_A )
      | ~ ( v2_tex_2 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    v2_tex_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ( v4_pre_topc @ ( sk_D @ X0 @ sk_B @ sk_A ) @ sk_A ) ) ),
    inference(demod,[status(thm)],['53','54','55'])).

thf('57',plain,(
    ! [X0: $i] :
      ( ( v4_pre_topc @ ( sk_D @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ sk_B @ sk_A ) @ sk_A )
      | ~ ( r1_tarski @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['50','56'])).

thf('58',plain,
    ( ~ ( r1_tarski @ ( k1_tarski @ sk_C_1 ) @ sk_B )
    | ( v4_pre_topc @ ( sk_D @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) ) @ sk_B @ sk_A ) @ sk_A ) ),
    inference('sup-',[status(thm)],['49','57'])).

thf('59',plain,(
    r1_tarski @ ( k1_tarski @ sk_C_1 ) @ sk_B ),
    inference('sup-',[status(thm)],['30','31'])).

thf('60',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D_1 @ sk_C_1 @ sk_B @ sk_A ) )
    = ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('61',plain,(
    v4_pre_topc @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) @ sk_A ),
    inference(demod,[status(thm)],['58','59','60'])).

thf('62',plain,(
    ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ ( sk_D @ ( k1_tarski @ sk_C_1 ) @ sk_B @ sk_A ) )
 != ( k1_tarski @ sk_C_1 ) ),
    inference(demod,[status(thm)],['48','61'])).

thf('63',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['33','62'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.elBscUlFD8
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 15:14:15 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.36/0.55  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.36/0.55  % Solved by: fo/fo7.sh
% 0.36/0.55  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.36/0.55  % done 102 iterations in 0.125s
% 0.36/0.55  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.36/0.55  % SZS output start Refutation
% 0.36/0.55  thf(v4_pre_topc_type, type, v4_pre_topc: $i > $i > $o).
% 0.36/0.55  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.36/0.55  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.36/0.55  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.36/0.55  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.36/0.55  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.36/0.55  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.36/0.55  thf(k9_subset_1_type, type, k9_subset_1: $i > $i > $i > $i).
% 0.36/0.55  thf(v2_tex_2_type, type, v2_tex_2: $i > $i > $o).
% 0.36/0.55  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.36/0.55  thf(sk_A_type, type, sk_A: $i).
% 0.36/0.55  thf(sk_B_type, type, sk_B: $i).
% 0.36/0.55  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.36/0.55  thf(sk_D_1_type, type, sk_D_1: $i > $i > $i > $i).
% 0.36/0.55  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.36/0.55  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.36/0.55  thf(t33_tex_2, conjecture,
% 0.36/0.55    (![A:$i]:
% 0.36/0.55     ( ( l1_pre_topc @ A ) =>
% 0.36/0.55       ( ![B:$i]:
% 0.36/0.55         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55           ( ( v2_tex_2 @ B @ A ) =>
% 0.36/0.55             ( ![C:$i]:
% 0.36/0.55               ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.36/0.55                 ( ~( ( r2_hidden @ C @ B ) & 
% 0.36/0.55                      ( ![D:$i]:
% 0.36/0.55                        ( ( m1_subset_1 @
% 0.36/0.55                            D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55                          ( ~( ( v4_pre_topc @ D @ A ) & 
% 0.36/0.55                               ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D ) =
% 0.36/0.55                                 ( k1_tarski @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.36/0.55  thf(zf_stmt_0, negated_conjecture,
% 0.36/0.55    (~( ![A:$i]:
% 0.36/0.55        ( ( l1_pre_topc @ A ) =>
% 0.36/0.55          ( ![B:$i]:
% 0.36/0.55            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55              ( ( v2_tex_2 @ B @ A ) =>
% 0.36/0.55                ( ![C:$i]:
% 0.36/0.55                  ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.36/0.55                    ( ~( ( r2_hidden @ C @ B ) & 
% 0.36/0.55                         ( ![D:$i]:
% 0.36/0.55                           ( ( m1_subset_1 @
% 0.36/0.55                               D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55                             ( ~( ( v4_pre_topc @ D @ A ) & 
% 0.36/0.55                                  ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D ) =
% 0.36/0.55                                    ( k1_tarski @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.36/0.55    inference('cnf.neg', [status(esa)], [t33_tex_2])).
% 0.36/0.55  thf('0', plain, ((m1_subset_1 @ sk_C_1 @ (u1_struct_0 @ sk_A))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('1', plain,
% 0.36/0.55      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf(t32_tex_2, axiom,
% 0.36/0.55    (![A:$i]:
% 0.36/0.55     ( ( l1_pre_topc @ A ) =>
% 0.36/0.55       ( ![B:$i]:
% 0.36/0.55         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55           ( ( v2_tex_2 @ B @ A ) =>
% 0.36/0.55             ( ![C:$i]:
% 0.36/0.55               ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.36/0.55                 ( ~( ( r2_hidden @ C @ B ) & 
% 0.36/0.55                      ( ![D:$i]:
% 0.36/0.55                        ( ( m1_subset_1 @
% 0.36/0.55                            D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55                          ( ~( ( v3_pre_topc @ D @ A ) & 
% 0.36/0.55                               ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D ) =
% 0.36/0.55                                 ( k1_tarski @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.36/0.55  thf('2', plain,
% 0.36/0.55      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (u1_struct_0 @ X12)))
% 0.36/0.55          | ((k9_subset_1 @ (u1_struct_0 @ X12) @ X11 @ 
% 0.36/0.55              (sk_D_1 @ X13 @ X11 @ X12)) = (k1_tarski @ X13))
% 0.36/0.55          | ~ (r2_hidden @ X13 @ X11)
% 0.36/0.55          | ~ (m1_subset_1 @ X13 @ (u1_struct_0 @ X12))
% 0.36/0.55          | ~ (v2_tex_2 @ X11 @ X12)
% 0.36/0.55          | ~ (l1_pre_topc @ X12))),
% 0.36/0.55      inference('cnf', [status(esa)], [t32_tex_2])).
% 0.36/0.55  thf('3', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (l1_pre_topc @ sk_A)
% 0.36/0.55          | ~ (v2_tex_2 @ sk_B @ sk_A)
% 0.36/0.55          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.36/0.55          | ~ (r2_hidden @ X0 @ sk_B)
% 0.36/0.55          | ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55              (sk_D_1 @ X0 @ sk_B @ sk_A)) = (k1_tarski @ X0)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['1', '2'])).
% 0.36/0.55  thf('4', plain, ((l1_pre_topc @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('5', plain, ((v2_tex_2 @ sk_B @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('6', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.36/0.55          | ~ (r2_hidden @ X0 @ sk_B)
% 0.36/0.55          | ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55              (sk_D_1 @ X0 @ sk_B @ sk_A)) = (k1_tarski @ X0)))),
% 0.36/0.55      inference('demod', [status(thm)], ['3', '4', '5'])).
% 0.36/0.55  thf('7', plain,
% 0.36/0.55      ((((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55          (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))
% 0.36/0.55        | ~ (r2_hidden @ sk_C_1 @ sk_B))),
% 0.36/0.55      inference('sup-', [status(thm)], ['0', '6'])).
% 0.36/0.55  thf('8', plain, ((r2_hidden @ sk_C_1 @ sk_B)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('9', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['7', '8'])).
% 0.36/0.55  thf('10', plain, ((m1_subset_1 @ sk_C_1 @ (u1_struct_0 @ sk_A))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('11', plain,
% 0.36/0.55      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('12', plain,
% 0.36/0.55      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (u1_struct_0 @ X12)))
% 0.36/0.55          | (m1_subset_1 @ (sk_D_1 @ X13 @ X11 @ X12) @ 
% 0.36/0.55             (k1_zfmisc_1 @ (u1_struct_0 @ X12)))
% 0.36/0.55          | ~ (r2_hidden @ X13 @ X11)
% 0.36/0.55          | ~ (m1_subset_1 @ X13 @ (u1_struct_0 @ X12))
% 0.36/0.55          | ~ (v2_tex_2 @ X11 @ X12)
% 0.36/0.55          | ~ (l1_pre_topc @ X12))),
% 0.36/0.55      inference('cnf', [status(esa)], [t32_tex_2])).
% 0.36/0.55  thf('13', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (l1_pre_topc @ sk_A)
% 0.36/0.55          | ~ (v2_tex_2 @ sk_B @ sk_A)
% 0.36/0.55          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.36/0.55          | ~ (r2_hidden @ X0 @ sk_B)
% 0.36/0.55          | (m1_subset_1 @ (sk_D_1 @ X0 @ sk_B @ sk_A) @ 
% 0.36/0.55             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.36/0.55      inference('sup-', [status(thm)], ['11', '12'])).
% 0.36/0.55  thf('14', plain, ((l1_pre_topc @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('15', plain, ((v2_tex_2 @ sk_B @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('16', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.36/0.55          | ~ (r2_hidden @ X0 @ sk_B)
% 0.36/0.55          | (m1_subset_1 @ (sk_D_1 @ X0 @ sk_B @ sk_A) @ 
% 0.36/0.55             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.36/0.55      inference('demod', [status(thm)], ['13', '14', '15'])).
% 0.36/0.55  thf('17', plain,
% 0.36/0.55      (((m1_subset_1 @ (sk_D_1 @ sk_C_1 @ sk_B @ sk_A) @ 
% 0.36/0.55         (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55        | ~ (r2_hidden @ sk_C_1 @ sk_B))),
% 0.36/0.55      inference('sup-', [status(thm)], ['10', '16'])).
% 0.36/0.55  thf('18', plain, ((r2_hidden @ sk_C_1 @ sk_B)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('19', plain,
% 0.36/0.55      ((m1_subset_1 @ (sk_D_1 @ sk_C_1 @ sk_B @ sk_A) @ 
% 0.36/0.55        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('demod', [status(thm)], ['17', '18'])).
% 0.36/0.55  thf(dt_k9_subset_1, axiom,
% 0.36/0.55    (![A:$i,B:$i,C:$i]:
% 0.36/0.55     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.36/0.55       ( m1_subset_1 @ ( k9_subset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.36/0.55  thf('20', plain,
% 0.36/0.55      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.36/0.55         ((m1_subset_1 @ (k9_subset_1 @ X4 @ X5 @ X6) @ (k1_zfmisc_1 @ X4))
% 0.36/0.55          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X4)))),
% 0.36/0.55      inference('cnf', [status(esa)], [dt_k9_subset_1])).
% 0.36/0.55  thf('21', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (m1_subset_1 @ 
% 0.36/0.55          (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55           (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55          (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['19', '20'])).
% 0.36/0.55  thf('22', plain,
% 0.36/0.55      ((m1_subset_1 @ (k1_tarski @ sk_C_1) @ 
% 0.36/0.55        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('sup+', [status(thm)], ['9', '21'])).
% 0.36/0.55  thf('23', plain,
% 0.36/0.55      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf(d6_tex_2, axiom,
% 0.36/0.55    (![A:$i]:
% 0.36/0.55     ( ( l1_pre_topc @ A ) =>
% 0.36/0.55       ( ![B:$i]:
% 0.36/0.55         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55           ( ( v2_tex_2 @ B @ A ) <=>
% 0.36/0.55             ( ![C:$i]:
% 0.36/0.55               ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55                 ( ~( ( r1_tarski @ C @ B ) & 
% 0.36/0.55                      ( ![D:$i]:
% 0.36/0.55                        ( ( m1_subset_1 @
% 0.36/0.55                            D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.36/0.55                          ( ~( ( v4_pre_topc @ D @ A ) & 
% 0.36/0.55                               ( ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ D ) =
% 0.36/0.55                                 ( C ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.36/0.55  thf('24', plain,
% 0.36/0.55      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (v2_tex_2 @ X7 @ X8)
% 0.36/0.55          | ((k9_subset_1 @ (u1_struct_0 @ X8) @ X7 @ (sk_D @ X9 @ X7 @ X8))
% 0.36/0.55              = (X9))
% 0.36/0.55          | ~ (r1_tarski @ X9 @ X7)
% 0.36/0.55          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (l1_pre_topc @ X8))),
% 0.36/0.55      inference('cnf', [status(esa)], [d6_tex_2])).
% 0.36/0.55  thf('25', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (l1_pre_topc @ sk_A)
% 0.36/0.55          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ X0 @ sk_B)
% 0.36/0.55          | ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55              (sk_D @ X0 @ sk_B @ sk_A)) = (X0))
% 0.36/0.55          | ~ (v2_tex_2 @ sk_B @ sk_A))),
% 0.36/0.55      inference('sup-', [status(thm)], ['23', '24'])).
% 0.36/0.55  thf('26', plain, ((l1_pre_topc @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('27', plain, ((v2_tex_2 @ sk_B @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('28', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ X0 @ sk_B)
% 0.36/0.55          | ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55              (sk_D @ X0 @ sk_B @ sk_A)) = (X0)))),
% 0.36/0.55      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.36/0.55  thf('29', plain,
% 0.36/0.55      ((((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55          (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))
% 0.36/0.55        | ~ (r1_tarski @ (k1_tarski @ sk_C_1) @ sk_B))),
% 0.36/0.55      inference('sup-', [status(thm)], ['22', '28'])).
% 0.36/0.55  thf('30', plain, ((r2_hidden @ sk_C_1 @ sk_B)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf(l1_zfmisc_1, axiom,
% 0.36/0.55    (![A:$i,B:$i]:
% 0.36/0.55     ( ( r1_tarski @ ( k1_tarski @ A ) @ B ) <=> ( r2_hidden @ A @ B ) ))).
% 0.36/0.55  thf('31', plain,
% 0.36/0.55      (![X1 : $i, X3 : $i]:
% 0.36/0.55         ((r1_tarski @ (k1_tarski @ X1) @ X3) | ~ (r2_hidden @ X1 @ X3))),
% 0.36/0.55      inference('cnf', [status(esa)], [l1_zfmisc_1])).
% 0.36/0.55  thf('32', plain, ((r1_tarski @ (k1_tarski @ sk_C_1) @ sk_B)),
% 0.36/0.55      inference('sup-', [status(thm)], ['30', '31'])).
% 0.36/0.55  thf('33', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['29', '32'])).
% 0.36/0.55  thf('34', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['7', '8'])).
% 0.36/0.55  thf('35', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (m1_subset_1 @ 
% 0.36/0.55          (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55           (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55          (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['19', '20'])).
% 0.36/0.55  thf('36', plain,
% 0.36/0.55      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('37', plain,
% 0.36/0.55      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (v2_tex_2 @ X7 @ X8)
% 0.36/0.55          | (m1_subset_1 @ (sk_D @ X9 @ X7 @ X8) @ 
% 0.36/0.55             (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (r1_tarski @ X9 @ X7)
% 0.36/0.55          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (l1_pre_topc @ X8))),
% 0.36/0.55      inference('cnf', [status(esa)], [d6_tex_2])).
% 0.36/0.55  thf('38', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (l1_pre_topc @ sk_A)
% 0.36/0.55          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ X0 @ sk_B)
% 0.36/0.55          | (m1_subset_1 @ (sk_D @ X0 @ sk_B @ sk_A) @ 
% 0.36/0.55             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (v2_tex_2 @ sk_B @ sk_A))),
% 0.36/0.55      inference('sup-', [status(thm)], ['36', '37'])).
% 0.36/0.55  thf('39', plain, ((l1_pre_topc @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('40', plain, ((v2_tex_2 @ sk_B @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('41', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ X0 @ sk_B)
% 0.36/0.55          | (m1_subset_1 @ (sk_D @ X0 @ sk_B @ sk_A) @ 
% 0.36/0.55             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.36/0.55      inference('demod', [status(thm)], ['38', '39', '40'])).
% 0.36/0.55  thf('42', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         ((m1_subset_1 @ 
% 0.36/0.55           (sk_D @ 
% 0.36/0.55            (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55             (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55            sk_B @ sk_A) @ 
% 0.36/0.55           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ 
% 0.36/0.55               (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55                (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55               sk_B))),
% 0.36/0.55      inference('sup-', [status(thm)], ['35', '41'])).
% 0.36/0.55  thf('43', plain,
% 0.36/0.55      ((~ (r1_tarski @ (k1_tarski @ sk_C_1) @ sk_B)
% 0.36/0.55        | (m1_subset_1 @ 
% 0.36/0.55           (sk_D @ 
% 0.36/0.55            (k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55             (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55            sk_B @ sk_A) @ 
% 0.36/0.55           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.36/0.55      inference('sup-', [status(thm)], ['34', '42'])).
% 0.36/0.55  thf('44', plain, ((r1_tarski @ (k1_tarski @ sk_C_1) @ sk_B)),
% 0.36/0.55      inference('sup-', [status(thm)], ['30', '31'])).
% 0.36/0.55  thf('45', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['7', '8'])).
% 0.36/0.55  thf('46', plain,
% 0.36/0.55      ((m1_subset_1 @ (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A) @ 
% 0.36/0.55        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('demod', [status(thm)], ['43', '44', '45'])).
% 0.36/0.55  thf('47', plain,
% 0.36/0.55      (![X14 : $i]:
% 0.36/0.55         (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ X14)
% 0.36/0.55            != (k1_tarski @ sk_C_1))
% 0.36/0.55          | ~ (v4_pre_topc @ X14 @ sk_A)
% 0.36/0.55          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('48', plain,
% 0.36/0.55      ((~ (v4_pre_topc @ (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A) @ sk_A)
% 0.36/0.55        | ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55            (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A))
% 0.36/0.55            != (k1_tarski @ sk_C_1)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['46', '47'])).
% 0.36/0.55  thf('49', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['7', '8'])).
% 0.36/0.55  thf('50', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (m1_subset_1 @ 
% 0.36/0.55          (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55           (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55          (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['19', '20'])).
% 0.36/0.55  thf('51', plain,
% 0.36/0.55      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('52', plain,
% 0.36/0.55      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (v2_tex_2 @ X7 @ X8)
% 0.36/0.55          | (v4_pre_topc @ (sk_D @ X9 @ X7 @ X8) @ X8)
% 0.36/0.55          | ~ (r1_tarski @ X9 @ X7)
% 0.36/0.55          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (u1_struct_0 @ X8)))
% 0.36/0.55          | ~ (l1_pre_topc @ X8))),
% 0.36/0.55      inference('cnf', [status(esa)], [d6_tex_2])).
% 0.36/0.55  thf('53', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (l1_pre_topc @ sk_A)
% 0.36/0.55          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ X0 @ sk_B)
% 0.36/0.55          | (v4_pre_topc @ (sk_D @ X0 @ sk_B @ sk_A) @ sk_A)
% 0.36/0.55          | ~ (v2_tex_2 @ sk_B @ sk_A))),
% 0.36/0.55      inference('sup-', [status(thm)], ['51', '52'])).
% 0.36/0.55  thf('54', plain, ((l1_pre_topc @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('55', plain, ((v2_tex_2 @ sk_B @ sk_A)),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('56', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.36/0.55          | ~ (r1_tarski @ X0 @ sk_B)
% 0.36/0.55          | (v4_pre_topc @ (sk_D @ X0 @ sk_B @ sk_A) @ sk_A))),
% 0.36/0.55      inference('demod', [status(thm)], ['53', '54', '55'])).
% 0.36/0.55  thf('57', plain,
% 0.36/0.55      (![X0 : $i]:
% 0.36/0.55         ((v4_pre_topc @ 
% 0.36/0.55           (sk_D @ 
% 0.36/0.55            (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55             (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55            sk_B @ sk_A) @ 
% 0.36/0.55           sk_A)
% 0.36/0.55          | ~ (r1_tarski @ 
% 0.36/0.55               (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ 
% 0.36/0.55                (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55               sk_B))),
% 0.36/0.55      inference('sup-', [status(thm)], ['50', '56'])).
% 0.36/0.55  thf('58', plain,
% 0.36/0.55      ((~ (r1_tarski @ (k1_tarski @ sk_C_1) @ sk_B)
% 0.36/0.55        | (v4_pre_topc @ 
% 0.36/0.55           (sk_D @ 
% 0.36/0.55            (k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55             (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) @ 
% 0.36/0.55            sk_B @ sk_A) @ 
% 0.36/0.55           sk_A))),
% 0.36/0.55      inference('sup-', [status(thm)], ['49', '57'])).
% 0.36/0.55  thf('59', plain, ((r1_tarski @ (k1_tarski @ sk_C_1) @ sk_B)),
% 0.36/0.55      inference('sup-', [status(thm)], ['30', '31'])).
% 0.36/0.55  thf('60', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D_1 @ sk_C_1 @ sk_B @ sk_A)) = (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['7', '8'])).
% 0.36/0.55  thf('61', plain,
% 0.36/0.55      ((v4_pre_topc @ (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A) @ sk_A)),
% 0.36/0.55      inference('demod', [status(thm)], ['58', '59', '60'])).
% 0.36/0.55  thf('62', plain,
% 0.36/0.55      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ 
% 0.36/0.55         (sk_D @ (k1_tarski @ sk_C_1) @ sk_B @ sk_A)) != (k1_tarski @ sk_C_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['48', '61'])).
% 0.36/0.55  thf('63', plain, ($false),
% 0.36/0.55      inference('simplify_reflect-', [status(thm)], ['33', '62'])).
% 0.36/0.55  
% 0.36/0.55  % SZS output end Refutation
% 0.36/0.55  
% 0.36/0.56  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
