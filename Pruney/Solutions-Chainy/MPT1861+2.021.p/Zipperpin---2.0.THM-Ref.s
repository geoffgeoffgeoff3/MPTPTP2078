%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.mbxfX1TnH2

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:12:14 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   72 ( 194 expanded)
%              Number of leaves         :   17 (  62 expanded)
%              Depth                    :   14
%              Number of atoms          :  559 (2568 expanded)
%              Number of equality atoms :   15 (  59 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v2_tex_2_type,type,(
    v2_tex_2: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k9_subset_1_type,type,(
    k9_subset_1: $i > $i > $i > $i )).

thf(t29_tex_2,conjecture,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( ( v2_tex_2 @ B @ A )
                  | ( v2_tex_2 @ C @ A ) )
               => ( v2_tex_2 @ ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_pre_topc @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
               => ( ( ( v2_tex_2 @ B @ A )
                    | ( v2_tex_2 @ C @ A ) )
                 => ( v2_tex_2 @ ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t29_tex_2])).

thf('0',plain,(
    ~ ( v2_tex_2 @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ sk_C ) @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( ( k9_subset_1 @ A @ B @ C )
        = ( k3_xboole_0 @ B @ C ) ) ) )).

thf('2',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( ( k9_subset_1 @ X10 @ X8 @ X9 )
        = ( k3_xboole_0 @ X8 @ X9 ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_subset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ sk_B )
      = ( k3_xboole_0 @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( ( k9_subset_1 @ A @ B @ C )
        = ( k9_subset_1 @ A @ C @ B ) ) ) )).

thf('5',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( ( k9_subset_1 @ X2 @ X4 @ X3 )
        = ( k9_subset_1 @ X2 @ X3 @ X4 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[commutativity_k9_subset_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ sk_C )
      = ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ sk_C )
    = ( k3_xboole_0 @ sk_C @ sk_B ) ),
    inference('sup+',[status(thm)],['3','6'])).

thf('8',plain,(
    ~ ( v2_tex_2 @ ( k3_xboole_0 @ sk_C @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['0','7'])).

thf('9',plain,
    ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ sk_C )
    = ( k3_xboole_0 @ sk_C @ sk_B ) ),
    inference('sup+',[status(thm)],['3','6'])).

thf('10',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( ( k9_subset_1 @ X10 @ X8 @ X9 )
        = ( k3_xboole_0 @ X8 @ X9 ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_subset_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ sk_C )
      = ( k3_xboole_0 @ X0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = ( k3_xboole_0 @ sk_C @ sk_B ) ),
    inference(demod,[status(thm)],['9','12'])).

thf('14',plain,(
    ~ ( v2_tex_2 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_A ) ),
    inference(demod,[status(thm)],['8','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ sk_C )
      = ( k3_xboole_0 @ X0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('16',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( ( k9_subset_1 @ X2 @ X4 @ X3 )
        = ( k9_subset_1 @ X2 @ X3 @ X4 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[commutativity_k9_subset_1])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ sk_B )
      = ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k9_subset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('20',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ( m1_subset_1 @ ( k9_subset_1 @ X5 @ X6 @ X7 ) @ ( k1_zfmisc_1 @ X5 ) )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k9_subset_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k9_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B @ X0 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup+',[status(thm)],['18','21'])).

thf('23',plain,(
    m1_subset_1 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['15','22'])).

thf('24',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_tex_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( ( r1_tarski @ C @ B )
                  & ( v2_tex_2 @ B @ A ) )
               => ( v2_tex_2 @ C @ A ) ) ) ) ) )).

thf('25',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( v2_tex_2 @ X13 @ X14 )
      | ~ ( r1_tarski @ X15 @ X13 )
      | ( v2_tex_2 @ X15 @ X14 )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( l1_pre_topc @ X14 ) ) ),
    inference(cnf,[status(esa)],[t28_tex_2])).

thf('26',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_tex_2 @ X0 @ sk_A )
      | ~ ( r1_tarski @ X0 @ sk_C )
      | ~ ( v2_tex_2 @ sk_C @ sk_A ) ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_tex_2 @ X0 @ sk_A )
      | ~ ( r1_tarski @ X0 @ sk_C )
      | ~ ( v2_tex_2 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['26','27'])).

thf('29',plain,
    ( ( v2_tex_2 @ sk_B @ sk_A )
    | ( v2_tex_2 @ sk_C @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,
    ( ( v2_tex_2 @ sk_C @ sk_A )
   <= ( v2_tex_2 @ sk_C @ sk_A ) ),
    inference(split,[status(esa)],['29'])).

thf('31',plain,(
    m1_subset_1 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['15','22'])).

thf('32',plain,
    ( ( v2_tex_2 @ sk_B @ sk_A )
   <= ( v2_tex_2 @ sk_B @ sk_A ) ),
    inference(split,[status(esa)],['29'])).

thf('33',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( v2_tex_2 @ X13 @ X14 )
      | ~ ( r1_tarski @ X15 @ X13 )
      | ( v2_tex_2 @ X15 @ X14 )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( l1_pre_topc @ X14 ) ) ),
    inference(cnf,[status(esa)],[t28_tex_2])).

thf('35',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_tex_2 @ X0 @ sk_A )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ~ ( v2_tex_2 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_tex_2 @ X0 @ sk_A )
      | ~ ( r1_tarski @ X0 @ sk_B )
      | ~ ( v2_tex_2 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ X0 @ sk_B )
        | ( v2_tex_2 @ X0 @ sk_A )
        | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) )
   <= ( v2_tex_2 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['32','37'])).

thf('39',plain,
    ( ( ( v2_tex_2 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_A )
      | ~ ( r1_tarski @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_B ) )
   <= ( v2_tex_2 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['31','38'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X0 @ X1 ) @ X0 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('41',plain,
    ( ( v2_tex_2 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_A )
   <= ( v2_tex_2 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['39','40'])).

thf('42',plain,(
    ~ ( v2_tex_2 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_A ) ),
    inference(demod,[status(thm)],['8','13'])).

thf('43',plain,(
    ~ ( v2_tex_2 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,
    ( ( v2_tex_2 @ sk_C @ sk_A )
    | ( v2_tex_2 @ sk_B @ sk_A ) ),
    inference(split,[status(esa)],['29'])).

thf('45',plain,(
    v2_tex_2 @ sk_C @ sk_A ),
    inference('sat_resolution*',[status(thm)],['43','44'])).

thf('46',plain,(
    v2_tex_2 @ sk_C @ sk_A ),
    inference(simpl_trail,[status(thm)],['30','45'])).

thf('47',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_tex_2 @ X0 @ sk_A )
      | ~ ( r1_tarski @ X0 @ sk_C ) ) ),
    inference(demod,[status(thm)],['28','46'])).

thf('48',plain,
    ( ~ ( r1_tarski @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_C )
    | ( v2_tex_2 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_A ) ),
    inference('sup-',[status(thm)],['23','47'])).

thf('49',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = ( k3_xboole_0 @ sk_C @ sk_B ) ),
    inference(demod,[status(thm)],['9','12'])).

thf('50',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X0 @ X1 ) @ X0 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('51',plain,(
    r1_tarski @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_C ),
    inference('sup+',[status(thm)],['49','50'])).

thf('52',plain,(
    v2_tex_2 @ ( k3_xboole_0 @ sk_B @ sk_C ) @ sk_A ),
    inference(demod,[status(thm)],['48','51'])).

thf('53',plain,(
    $false ),
    inference(demod,[status(thm)],['14','52'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.mbxfX1TnH2
% 0.13/0.34  % Computer   : n021.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 11:09:04 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.49  % Solved by: fo/fo7.sh
% 0.20/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.49  % done 62 iterations in 0.040s
% 0.20/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.49  % SZS output start Refutation
% 0.20/0.49  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.20/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.49  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.49  thf(v2_tex_2_type, type, v2_tex_2: $i > $i > $o).
% 0.20/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.49  thf(k9_subset_1_type, type, k9_subset_1: $i > $i > $i > $i).
% 0.20/0.49  thf(t29_tex_2, conjecture,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( l1_pre_topc @ A ) =>
% 0.20/0.49       ( ![B:$i]:
% 0.20/0.49         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.49           ( ![C:$i]:
% 0.20/0.49             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.49               ( ( ( v2_tex_2 @ B @ A ) | ( v2_tex_2 @ C @ A ) ) =>
% 0.20/0.49                 ( v2_tex_2 @ ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ A ) ) ) ) ) ) ))).
% 0.20/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.49    (~( ![A:$i]:
% 0.20/0.49        ( ( l1_pre_topc @ A ) =>
% 0.20/0.49          ( ![B:$i]:
% 0.20/0.49            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.49              ( ![C:$i]:
% 0.20/0.49                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.49                  ( ( ( v2_tex_2 @ B @ A ) | ( v2_tex_2 @ C @ A ) ) =>
% 0.20/0.49                    ( v2_tex_2 @
% 0.20/0.49                      ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ A ) ) ) ) ) ) ) )),
% 0.20/0.49    inference('cnf.neg', [status(esa)], [t29_tex_2])).
% 0.20/0.49  thf('0', plain,
% 0.20/0.49      (~ (v2_tex_2 @ (k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ sk_C) @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('1', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(redefinition_k9_subset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.49       ( ( k9_subset_1 @ A @ B @ C ) = ( k3_xboole_0 @ B @ C ) ) ))).
% 0.20/0.49  thf('2', plain,
% 0.20/0.49      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.49         (((k9_subset_1 @ X10 @ X8 @ X9) = (k3_xboole_0 @ X8 @ X9))
% 0.20/0.49          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ X10)))),
% 0.20/0.49      inference('cnf', [status(esa)], [redefinition_k9_subset_1])).
% 0.20/0.49  thf('3', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ sk_B)
% 0.20/0.49           = (k3_xboole_0 @ X0 @ sk_B))),
% 0.20/0.49      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.49  thf('4', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(commutativity_k9_subset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.49       ( ( k9_subset_1 @ A @ B @ C ) = ( k9_subset_1 @ A @ C @ B ) ) ))).
% 0.20/0.49  thf('5', plain,
% 0.20/0.49      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.49         (((k9_subset_1 @ X2 @ X4 @ X3) = (k9_subset_1 @ X2 @ X3 @ X4))
% 0.20/0.49          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X2)))),
% 0.20/0.49      inference('cnf', [status(esa)], [commutativity_k9_subset_1])).
% 0.20/0.49  thf('6', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ sk_C)
% 0.20/0.49           = (k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_C @ X0))),
% 0.20/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.49  thf('7', plain,
% 0.20/0.49      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ sk_C)
% 0.20/0.49         = (k3_xboole_0 @ sk_C @ sk_B))),
% 0.20/0.49      inference('sup+', [status(thm)], ['3', '6'])).
% 0.20/0.49  thf('8', plain, (~ (v2_tex_2 @ (k3_xboole_0 @ sk_C @ sk_B) @ sk_A)),
% 0.20/0.49      inference('demod', [status(thm)], ['0', '7'])).
% 0.20/0.49  thf('9', plain,
% 0.20/0.49      (((k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ sk_C)
% 0.20/0.49         = (k3_xboole_0 @ sk_C @ sk_B))),
% 0.20/0.49      inference('sup+', [status(thm)], ['3', '6'])).
% 0.20/0.49  thf('10', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('11', plain,
% 0.20/0.49      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.49         (((k9_subset_1 @ X10 @ X8 @ X9) = (k3_xboole_0 @ X8 @ X9))
% 0.20/0.49          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ X10)))),
% 0.20/0.49      inference('cnf', [status(esa)], [redefinition_k9_subset_1])).
% 0.20/0.49  thf('12', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ sk_C)
% 0.20/0.49           = (k3_xboole_0 @ X0 @ sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.49  thf('13', plain,
% 0.20/0.49      (((k3_xboole_0 @ sk_B @ sk_C) = (k3_xboole_0 @ sk_C @ sk_B))),
% 0.20/0.49      inference('demod', [status(thm)], ['9', '12'])).
% 0.20/0.49  thf('14', plain, (~ (v2_tex_2 @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_A)),
% 0.20/0.49      inference('demod', [status(thm)], ['8', '13'])).
% 0.20/0.49  thf('15', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ sk_C)
% 0.20/0.49           = (k3_xboole_0 @ X0 @ sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.49  thf('16', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('17', plain,
% 0.20/0.49      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.49         (((k9_subset_1 @ X2 @ X4 @ X3) = (k9_subset_1 @ X2 @ X3 @ X4))
% 0.20/0.49          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X2)))),
% 0.20/0.49      inference('cnf', [status(esa)], [commutativity_k9_subset_1])).
% 0.20/0.49  thf('18', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ sk_B)
% 0.20/0.49           = (k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ X0))),
% 0.20/0.49      inference('sup-', [status(thm)], ['16', '17'])).
% 0.20/0.49  thf('19', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(dt_k9_subset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.49       ( m1_subset_1 @ ( k9_subset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.20/0.49  thf('20', plain,
% 0.20/0.49      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.20/0.49         ((m1_subset_1 @ (k9_subset_1 @ X5 @ X6 @ X7) @ (k1_zfmisc_1 @ X5))
% 0.20/0.49          | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ X5)))),
% 0.20/0.49      inference('cnf', [status(esa)], [dt_k9_subset_1])).
% 0.20/0.49  thf('21', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (m1_subset_1 @ (k9_subset_1 @ (u1_struct_0 @ sk_A) @ X0 @ sk_B) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['19', '20'])).
% 0.20/0.49  thf('22', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (m1_subset_1 @ (k9_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B @ X0) @ 
% 0.20/0.49          (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('sup+', [status(thm)], ['18', '21'])).
% 0.20/0.49  thf('23', plain,
% 0.20/0.49      ((m1_subset_1 @ (k3_xboole_0 @ sk_B @ sk_C) @ 
% 0.20/0.49        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('sup+', [status(thm)], ['15', '22'])).
% 0.20/0.49  thf('24', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(t28_tex_2, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( l1_pre_topc @ A ) =>
% 0.20/0.49       ( ![B:$i]:
% 0.20/0.49         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.49           ( ![C:$i]:
% 0.20/0.49             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.49               ( ( ( r1_tarski @ C @ B ) & ( v2_tex_2 @ B @ A ) ) =>
% 0.20/0.49                 ( v2_tex_2 @ C @ A ) ) ) ) ) ) ))).
% 0.20/0.49  thf('25', plain,
% 0.20/0.49      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.20/0.49          | ~ (v2_tex_2 @ X13 @ X14)
% 0.20/0.49          | ~ (r1_tarski @ X15 @ X13)
% 0.20/0.49          | (v2_tex_2 @ X15 @ X14)
% 0.20/0.49          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.20/0.49          | ~ (l1_pre_topc @ X14))),
% 0.20/0.49      inference('cnf', [status(esa)], [t28_tex_2])).
% 0.20/0.49  thf('26', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (l1_pre_topc @ sk_A)
% 0.20/0.49          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.49          | (v2_tex_2 @ X0 @ sk_A)
% 0.20/0.49          | ~ (r1_tarski @ X0 @ sk_C)
% 0.20/0.49          | ~ (v2_tex_2 @ sk_C @ sk_A))),
% 0.20/0.49      inference('sup-', [status(thm)], ['24', '25'])).
% 0.20/0.49  thf('27', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('28', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.49          | (v2_tex_2 @ X0 @ sk_A)
% 0.20/0.49          | ~ (r1_tarski @ X0 @ sk_C)
% 0.20/0.49          | ~ (v2_tex_2 @ sk_C @ sk_A))),
% 0.20/0.49      inference('demod', [status(thm)], ['26', '27'])).
% 0.20/0.49  thf('29', plain, (((v2_tex_2 @ sk_B @ sk_A) | (v2_tex_2 @ sk_C @ sk_A))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('30', plain,
% 0.20/0.49      (((v2_tex_2 @ sk_C @ sk_A)) <= (((v2_tex_2 @ sk_C @ sk_A)))),
% 0.20/0.49      inference('split', [status(esa)], ['29'])).
% 0.20/0.49  thf('31', plain,
% 0.20/0.49      ((m1_subset_1 @ (k3_xboole_0 @ sk_B @ sk_C) @ 
% 0.20/0.49        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('sup+', [status(thm)], ['15', '22'])).
% 0.20/0.49  thf('32', plain,
% 0.20/0.49      (((v2_tex_2 @ sk_B @ sk_A)) <= (((v2_tex_2 @ sk_B @ sk_A)))),
% 0.20/0.49      inference('split', [status(esa)], ['29'])).
% 0.20/0.49  thf('33', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('34', plain,
% 0.20/0.49      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.20/0.49          | ~ (v2_tex_2 @ X13 @ X14)
% 0.20/0.49          | ~ (r1_tarski @ X15 @ X13)
% 0.20/0.49          | (v2_tex_2 @ X15 @ X14)
% 0.20/0.49          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.20/0.49          | ~ (l1_pre_topc @ X14))),
% 0.20/0.49      inference('cnf', [status(esa)], [t28_tex_2])).
% 0.20/0.49  thf('35', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (l1_pre_topc @ sk_A)
% 0.20/0.49          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.49          | (v2_tex_2 @ X0 @ sk_A)
% 0.20/0.49          | ~ (r1_tarski @ X0 @ sk_B)
% 0.20/0.49          | ~ (v2_tex_2 @ sk_B @ sk_A))),
% 0.20/0.49      inference('sup-', [status(thm)], ['33', '34'])).
% 0.20/0.49  thf('36', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('37', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.49          | (v2_tex_2 @ X0 @ sk_A)
% 0.20/0.49          | ~ (r1_tarski @ X0 @ sk_B)
% 0.20/0.49          | ~ (v2_tex_2 @ sk_B @ sk_A))),
% 0.20/0.49      inference('demod', [status(thm)], ['35', '36'])).
% 0.20/0.49  thf('38', plain,
% 0.20/0.49      ((![X0 : $i]:
% 0.20/0.49          (~ (r1_tarski @ X0 @ sk_B)
% 0.20/0.49           | (v2_tex_2 @ X0 @ sk_A)
% 0.20/0.49           | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))
% 0.20/0.49         <= (((v2_tex_2 @ sk_B @ sk_A)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['32', '37'])).
% 0.20/0.49  thf('39', plain,
% 0.20/0.49      ((((v2_tex_2 @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_A)
% 0.20/0.49         | ~ (r1_tarski @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_B)))
% 0.20/0.49         <= (((v2_tex_2 @ sk_B @ sk_A)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['31', '38'])).
% 0.20/0.49  thf(t17_xboole_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.20/0.49  thf('40', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X0 @ X1) @ X0)),
% 0.20/0.49      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.20/0.49  thf('41', plain,
% 0.20/0.49      (((v2_tex_2 @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_A))
% 0.20/0.49         <= (((v2_tex_2 @ sk_B @ sk_A)))),
% 0.20/0.49      inference('demod', [status(thm)], ['39', '40'])).
% 0.20/0.49  thf('42', plain, (~ (v2_tex_2 @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_A)),
% 0.20/0.49      inference('demod', [status(thm)], ['8', '13'])).
% 0.20/0.49  thf('43', plain, (~ ((v2_tex_2 @ sk_B @ sk_A))),
% 0.20/0.49      inference('sup-', [status(thm)], ['41', '42'])).
% 0.20/0.49  thf('44', plain, (((v2_tex_2 @ sk_C @ sk_A)) | ((v2_tex_2 @ sk_B @ sk_A))),
% 0.20/0.49      inference('split', [status(esa)], ['29'])).
% 0.20/0.49  thf('45', plain, (((v2_tex_2 @ sk_C @ sk_A))),
% 0.20/0.49      inference('sat_resolution*', [status(thm)], ['43', '44'])).
% 0.20/0.49  thf('46', plain, ((v2_tex_2 @ sk_C @ sk_A)),
% 0.20/0.49      inference('simpl_trail', [status(thm)], ['30', '45'])).
% 0.20/0.49  thf('47', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.49          | (v2_tex_2 @ X0 @ sk_A)
% 0.20/0.49          | ~ (r1_tarski @ X0 @ sk_C))),
% 0.20/0.49      inference('demod', [status(thm)], ['28', '46'])).
% 0.20/0.49  thf('48', plain,
% 0.20/0.49      ((~ (r1_tarski @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_C)
% 0.20/0.49        | (v2_tex_2 @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_A))),
% 0.20/0.49      inference('sup-', [status(thm)], ['23', '47'])).
% 0.20/0.49  thf('49', plain,
% 0.20/0.49      (((k3_xboole_0 @ sk_B @ sk_C) = (k3_xboole_0 @ sk_C @ sk_B))),
% 0.20/0.49      inference('demod', [status(thm)], ['9', '12'])).
% 0.20/0.49  thf('50', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X0 @ X1) @ X0)),
% 0.20/0.49      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.20/0.49  thf('51', plain, ((r1_tarski @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_C)),
% 0.20/0.49      inference('sup+', [status(thm)], ['49', '50'])).
% 0.20/0.49  thf('52', plain, ((v2_tex_2 @ (k3_xboole_0 @ sk_B @ sk_C) @ sk_A)),
% 0.20/0.49      inference('demod', [status(thm)], ['48', '51'])).
% 0.20/0.49  thf('53', plain, ($false), inference('demod', [status(thm)], ['14', '52'])).
% 0.20/0.49  
% 0.20/0.49  % SZS output end Refutation
% 0.20/0.49  
% 0.20/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
