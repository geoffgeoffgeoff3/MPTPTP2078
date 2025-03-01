%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.97QhqlzMJT

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:05:15 EST 2020

% Result     : Theorem 0.19s
% Output     : Refutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   50 (  77 expanded)
%              Number of leaves         :   15 (  30 expanded)
%              Depth                    :    8
%              Number of atoms          :  334 ( 952 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   13 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_tops_2_type,type,(
    v1_tops_2: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(sk_C_2_type,type,(
    sk_C_2: $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(t18_tops_2,conjecture,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
             => ( ( ( r1_tarski @ B @ C )
                  & ( v1_tops_2 @ C @ A ) )
               => ( v1_tops_2 @ B @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_pre_topc @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
               => ( ( ( r1_tarski @ B @ C )
                    & ( v1_tops_2 @ C @ A ) )
                 => ( v1_tops_2 @ B @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t18_tops_2])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d1_tops_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v1_tops_2 @ B @ A )
          <=> ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
               => ( ( r2_hidden @ C @ B )
                 => ( v3_pre_topc @ C @ A ) ) ) ) ) ) )).

thf('1',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ~ ( v3_pre_topc @ ( sk_C_1 @ X4 @ X5 ) @ X5 )
      | ( v1_tops_2 @ X4 @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[d1_tops_2])).

thf('2',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v1_tops_2 @ sk_B @ sk_A )
    | ~ ( v3_pre_topc @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,
    ( ( v1_tops_2 @ sk_B @ sk_A )
    | ~ ( v3_pre_topc @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A ) ),
    inference(demod,[status(thm)],['2','3'])).

thf('5',plain,(
    ~ ( v1_tops_2 @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ~ ( v3_pre_topc @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A ) ),
    inference(clc,[status(thm)],['4','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ( m1_subset_1 @ ( sk_C_1 @ X4 @ X5 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ( v1_tops_2 @ X4 @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[d1_tops_2])).

thf('9',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v1_tops_2 @ sk_B @ sk_A )
    | ( m1_subset_1 @ ( sk_C_1 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ( v1_tops_2 @ sk_B @ sk_A )
    | ( m1_subset_1 @ ( sk_C_1 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    ~ ( v1_tops_2 @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    m1_subset_1 @ ( sk_C_1 @ sk_B @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(clc,[status(thm)],['11','12'])).

thf('14',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ~ ( v1_tops_2 @ X4 @ X5 )
      | ~ ( r2_hidden @ X6 @ X4 )
      | ( v3_pre_topc @ X6 @ X5 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[d1_tops_2])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v3_pre_topc @ X0 @ sk_A )
      | ~ ( r2_hidden @ X0 @ sk_C_2 )
      | ~ ( v1_tops_2 @ sk_C_2 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    v1_tops_2 @ sk_C_2 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v3_pre_topc @ X0 @ sk_A )
      | ~ ( r2_hidden @ X0 @ sk_C_2 ) ) ),
    inference(demod,[status(thm)],['16','17','18'])).

thf('20',plain,
    ( ~ ( r2_hidden @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_C_2 )
    | ( v3_pre_topc @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A ) ),
    inference('sup-',[status(thm)],['13','19'])).

thf('21',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X4 )
      | ( v1_tops_2 @ X4 @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[d1_tops_2])).

thf('23',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v1_tops_2 @ sk_B @ sk_A )
    | ( r2_hidden @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,
    ( ( v1_tops_2 @ sk_B @ sk_A )
    | ( r2_hidden @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['23','24'])).

thf('26',plain,(
    ~ ( v1_tops_2 @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    r2_hidden @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_B ),
    inference(clc,[status(thm)],['25','26'])).

thf('28',plain,(
    r1_tarski @ sk_B @ sk_C_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('29',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_C_2 )
      | ~ ( r2_hidden @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    r2_hidden @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_C_2 ),
    inference('sup-',[status(thm)],['27','30'])).

thf('32',plain,(
    v3_pre_topc @ ( sk_C_1 @ sk_B @ sk_A ) @ sk_A ),
    inference(demod,[status(thm)],['20','31'])).

thf('33',plain,(
    $false ),
    inference(demod,[status(thm)],['6','32'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.97QhqlzMJT
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 13:08:54 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.19/0.34  % Number of cores: 8
% 0.19/0.34  % Python version: Python 3.6.8
% 0.19/0.34  % Running in FO mode
% 0.19/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.19/0.46  % Solved by: fo/fo7.sh
% 0.19/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.19/0.46  % done 23 iterations in 0.014s
% 0.19/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.19/0.46  % SZS output start Refutation
% 0.19/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.19/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.19/0.46  thf(v1_tops_2_type, type, v1_tops_2: $i > $i > $o).
% 0.19/0.46  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.19/0.46  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.19/0.46  thf(sk_C_2_type, type, sk_C_2: $i).
% 0.19/0.46  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.19/0.46  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.19/0.46  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.19/0.46  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.19/0.46  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.19/0.46  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 0.19/0.46  thf(t18_tops_2, conjecture,
% 0.19/0.46    (![A:$i]:
% 0.19/0.46     ( ( l1_pre_topc @ A ) =>
% 0.19/0.46       ( ![B:$i]:
% 0.19/0.46         ( ( m1_subset_1 @
% 0.19/0.46             B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.19/0.46           ( ![C:$i]:
% 0.19/0.46             ( ( m1_subset_1 @
% 0.19/0.46                 C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.19/0.46               ( ( ( r1_tarski @ B @ C ) & ( v1_tops_2 @ C @ A ) ) =>
% 0.19/0.46                 ( v1_tops_2 @ B @ A ) ) ) ) ) ) ))).
% 0.19/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.19/0.46    (~( ![A:$i]:
% 0.19/0.46        ( ( l1_pre_topc @ A ) =>
% 0.19/0.46          ( ![B:$i]:
% 0.19/0.46            ( ( m1_subset_1 @
% 0.19/0.46                B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.19/0.46              ( ![C:$i]:
% 0.19/0.46                ( ( m1_subset_1 @
% 0.19/0.46                    C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.19/0.46                  ( ( ( r1_tarski @ B @ C ) & ( v1_tops_2 @ C @ A ) ) =>
% 0.19/0.46                    ( v1_tops_2 @ B @ A ) ) ) ) ) ) ) )),
% 0.19/0.46    inference('cnf.neg', [status(esa)], [t18_tops_2])).
% 0.19/0.46  thf('0', plain,
% 0.19/0.46      ((m1_subset_1 @ sk_B @ 
% 0.19/0.46        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf(d1_tops_2, axiom,
% 0.19/0.46    (![A:$i]:
% 0.19/0.46     ( ( l1_pre_topc @ A ) =>
% 0.19/0.46       ( ![B:$i]:
% 0.19/0.46         ( ( m1_subset_1 @
% 0.19/0.46             B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.19/0.46           ( ( v1_tops_2 @ B @ A ) <=>
% 0.19/0.46             ( ![C:$i]:
% 0.19/0.46               ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.19/0.46                 ( ( r2_hidden @ C @ B ) => ( v3_pre_topc @ C @ A ) ) ) ) ) ) ) ))).
% 0.19/0.46  thf('1', plain,
% 0.19/0.46      (![X4 : $i, X5 : $i]:
% 0.19/0.46         (~ (m1_subset_1 @ X4 @ 
% 0.19/0.46             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.19/0.46          | ~ (v3_pre_topc @ (sk_C_1 @ X4 @ X5) @ X5)
% 0.19/0.46          | (v1_tops_2 @ X4 @ X5)
% 0.19/0.46          | ~ (l1_pre_topc @ X5))),
% 0.19/0.46      inference('cnf', [status(esa)], [d1_tops_2])).
% 0.19/0.46  thf('2', plain,
% 0.19/0.46      ((~ (l1_pre_topc @ sk_A)
% 0.19/0.46        | (v1_tops_2 @ sk_B @ sk_A)
% 0.19/0.46        | ~ (v3_pre_topc @ (sk_C_1 @ sk_B @ sk_A) @ sk_A))),
% 0.19/0.46      inference('sup-', [status(thm)], ['0', '1'])).
% 0.19/0.46  thf('3', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('4', plain,
% 0.19/0.46      (((v1_tops_2 @ sk_B @ sk_A)
% 0.19/0.46        | ~ (v3_pre_topc @ (sk_C_1 @ sk_B @ sk_A) @ sk_A))),
% 0.19/0.46      inference('demod', [status(thm)], ['2', '3'])).
% 0.19/0.46  thf('5', plain, (~ (v1_tops_2 @ sk_B @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('6', plain, (~ (v3_pre_topc @ (sk_C_1 @ sk_B @ sk_A) @ sk_A)),
% 0.19/0.46      inference('clc', [status(thm)], ['4', '5'])).
% 0.19/0.46  thf('7', plain,
% 0.19/0.46      ((m1_subset_1 @ sk_B @ 
% 0.19/0.46        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('8', plain,
% 0.19/0.46      (![X4 : $i, X5 : $i]:
% 0.19/0.46         (~ (m1_subset_1 @ X4 @ 
% 0.19/0.46             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.19/0.46          | (m1_subset_1 @ (sk_C_1 @ X4 @ X5) @ 
% 0.19/0.46             (k1_zfmisc_1 @ (u1_struct_0 @ X5)))
% 0.19/0.46          | (v1_tops_2 @ X4 @ X5)
% 0.19/0.46          | ~ (l1_pre_topc @ X5))),
% 0.19/0.46      inference('cnf', [status(esa)], [d1_tops_2])).
% 0.19/0.46  thf('9', plain,
% 0.19/0.46      ((~ (l1_pre_topc @ sk_A)
% 0.19/0.46        | (v1_tops_2 @ sk_B @ sk_A)
% 0.19/0.46        | (m1_subset_1 @ (sk_C_1 @ sk_B @ sk_A) @ 
% 0.19/0.46           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.19/0.46      inference('sup-', [status(thm)], ['7', '8'])).
% 0.19/0.46  thf('10', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('11', plain,
% 0.19/0.46      (((v1_tops_2 @ sk_B @ sk_A)
% 0.19/0.46        | (m1_subset_1 @ (sk_C_1 @ sk_B @ sk_A) @ 
% 0.19/0.46           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.19/0.46      inference('demod', [status(thm)], ['9', '10'])).
% 0.19/0.46  thf('12', plain, (~ (v1_tops_2 @ sk_B @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('13', plain,
% 0.19/0.46      ((m1_subset_1 @ (sk_C_1 @ sk_B @ sk_A) @ 
% 0.19/0.46        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.19/0.46      inference('clc', [status(thm)], ['11', '12'])).
% 0.19/0.46  thf('14', plain,
% 0.19/0.46      ((m1_subset_1 @ sk_C_2 @ 
% 0.19/0.46        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('15', plain,
% 0.19/0.46      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.19/0.46         (~ (m1_subset_1 @ X4 @ 
% 0.19/0.46             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.19/0.46          | ~ (v1_tops_2 @ X4 @ X5)
% 0.19/0.46          | ~ (r2_hidden @ X6 @ X4)
% 0.19/0.46          | (v3_pre_topc @ X6 @ X5)
% 0.19/0.46          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5)))
% 0.19/0.46          | ~ (l1_pre_topc @ X5))),
% 0.19/0.46      inference('cnf', [status(esa)], [d1_tops_2])).
% 0.19/0.46  thf('16', plain,
% 0.19/0.46      (![X0 : $i]:
% 0.19/0.46         (~ (l1_pre_topc @ sk_A)
% 0.19/0.46          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.46          | (v3_pre_topc @ X0 @ sk_A)
% 0.19/0.46          | ~ (r2_hidden @ X0 @ sk_C_2)
% 0.19/0.46          | ~ (v1_tops_2 @ sk_C_2 @ sk_A))),
% 0.19/0.46      inference('sup-', [status(thm)], ['14', '15'])).
% 0.19/0.46  thf('17', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('18', plain, ((v1_tops_2 @ sk_C_2 @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('19', plain,
% 0.19/0.46      (![X0 : $i]:
% 0.19/0.46         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.46          | (v3_pre_topc @ X0 @ sk_A)
% 0.19/0.46          | ~ (r2_hidden @ X0 @ sk_C_2))),
% 0.19/0.46      inference('demod', [status(thm)], ['16', '17', '18'])).
% 0.19/0.46  thf('20', plain,
% 0.19/0.46      ((~ (r2_hidden @ (sk_C_1 @ sk_B @ sk_A) @ sk_C_2)
% 0.19/0.46        | (v3_pre_topc @ (sk_C_1 @ sk_B @ sk_A) @ sk_A))),
% 0.19/0.46      inference('sup-', [status(thm)], ['13', '19'])).
% 0.19/0.46  thf('21', plain,
% 0.19/0.46      ((m1_subset_1 @ sk_B @ 
% 0.19/0.46        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('22', plain,
% 0.19/0.46      (![X4 : $i, X5 : $i]:
% 0.19/0.46         (~ (m1_subset_1 @ X4 @ 
% 0.19/0.46             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.19/0.46          | (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X4)
% 0.19/0.46          | (v1_tops_2 @ X4 @ X5)
% 0.19/0.46          | ~ (l1_pre_topc @ X5))),
% 0.19/0.46      inference('cnf', [status(esa)], [d1_tops_2])).
% 0.19/0.46  thf('23', plain,
% 0.19/0.46      ((~ (l1_pre_topc @ sk_A)
% 0.19/0.46        | (v1_tops_2 @ sk_B @ sk_A)
% 0.19/0.46        | (r2_hidden @ (sk_C_1 @ sk_B @ sk_A) @ sk_B))),
% 0.19/0.46      inference('sup-', [status(thm)], ['21', '22'])).
% 0.19/0.46  thf('24', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('25', plain,
% 0.19/0.46      (((v1_tops_2 @ sk_B @ sk_A) | (r2_hidden @ (sk_C_1 @ sk_B @ sk_A) @ sk_B))),
% 0.19/0.46      inference('demod', [status(thm)], ['23', '24'])).
% 0.19/0.46  thf('26', plain, (~ (v1_tops_2 @ sk_B @ sk_A)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('27', plain, ((r2_hidden @ (sk_C_1 @ sk_B @ sk_A) @ sk_B)),
% 0.19/0.46      inference('clc', [status(thm)], ['25', '26'])).
% 0.19/0.46  thf('28', plain, ((r1_tarski @ sk_B @ sk_C_2)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf(d3_tarski, axiom,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( r1_tarski @ A @ B ) <=>
% 0.19/0.46       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.19/0.46  thf('29', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.19/0.46         (~ (r2_hidden @ X0 @ X1)
% 0.19/0.46          | (r2_hidden @ X0 @ X2)
% 0.19/0.46          | ~ (r1_tarski @ X1 @ X2))),
% 0.19/0.46      inference('cnf', [status(esa)], [d3_tarski])).
% 0.19/0.46  thf('30', plain,
% 0.19/0.46      (![X0 : $i]: ((r2_hidden @ X0 @ sk_C_2) | ~ (r2_hidden @ X0 @ sk_B))),
% 0.19/0.46      inference('sup-', [status(thm)], ['28', '29'])).
% 0.19/0.46  thf('31', plain, ((r2_hidden @ (sk_C_1 @ sk_B @ sk_A) @ sk_C_2)),
% 0.19/0.46      inference('sup-', [status(thm)], ['27', '30'])).
% 0.19/0.46  thf('32', plain, ((v3_pre_topc @ (sk_C_1 @ sk_B @ sk_A) @ sk_A)),
% 0.19/0.46      inference('demod', [status(thm)], ['20', '31'])).
% 0.19/0.46  thf('33', plain, ($false), inference('demod', [status(thm)], ['6', '32'])).
% 0.19/0.46  
% 0.19/0.46  % SZS output end Refutation
% 0.19/0.46  
% 0.19/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
