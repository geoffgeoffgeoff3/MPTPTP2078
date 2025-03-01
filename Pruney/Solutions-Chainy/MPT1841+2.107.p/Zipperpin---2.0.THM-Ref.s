%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.XrGE3pMtyP

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:11:43 EST 2020

% Result     : Theorem 0.24s
% Output     : Refutation 0.24s
% Verified   : 
% Statistics : Number of formulae       :   60 (  77 expanded)
%              Number of leaves         :   24 (  33 expanded)
%              Depth                    :   11
%              Number of atoms          :  311 ( 488 expanded)
%              Number of equality atoms :   29 (  34 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(v1_zfmisc_1_type,type,(
    v1_zfmisc_1: $i > $o )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v1_subset_1_type,type,(
    v1_subset_1: $i > $i > $o )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k6_domain_1_type,type,(
    k6_domain_1: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

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
    m1_subset_1 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k6_domain_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( m1_subset_1 @ B @ A ) )
     => ( ( k6_domain_1 @ A @ B )
        = ( k1_tarski @ B ) ) ) )).

thf('1',plain,(
    ! [X25: $i,X26: $i] :
      ( ( v1_xboole_0 @ X25 )
      | ~ ( m1_subset_1 @ X26 @ X25 )
      | ( ( k6_domain_1 @ X25 @ X26 )
        = ( k1_tarski @ X26 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_domain_1])).

thf('2',plain,
    ( ( ( k6_domain_1 @ sk_A @ sk_B )
      = ( k1_tarski @ sk_B ) )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,
    ( ( k6_domain_1 @ sk_A @ sk_B )
    = ( k1_tarski @ sk_B ) ),
    inference(clc,[status(thm)],['2','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k6_domain_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( m1_subset_1 @ B @ A ) )
     => ( m1_subset_1 @ ( k6_domain_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('6',plain,(
    ! [X23: $i,X24: $i] :
      ( ( v1_xboole_0 @ X23 )
      | ~ ( m1_subset_1 @ X24 @ X23 )
      | ( m1_subset_1 @ ( k6_domain_1 @ X23 @ X24 ) @ ( k1_zfmisc_1 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_domain_1])).

thf('7',plain,
    ( ( m1_subset_1 @ ( k6_domain_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    m1_subset_1 @ ( k6_domain_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(clc,[status(thm)],['7','8'])).

thf(cc2_tex_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( v1_zfmisc_1 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( ~ ( v1_xboole_0 @ B )
           => ~ ( v1_subset_1 @ B @ A ) ) ) ) )).

thf('10',plain,(
    ! [X27: $i,X28: $i] :
      ( ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ X28 ) )
      | ~ ( v1_subset_1 @ X27 @ X28 )
      | ( v1_xboole_0 @ X27 )
      | ~ ( v1_zfmisc_1 @ X28 )
      | ( v1_xboole_0 @ X28 ) ) ),
    inference(cnf,[status(esa)],[cc2_tex_2])).

thf('11',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ~ ( v1_zfmisc_1 @ sk_A )
    | ( v1_xboole_0 @ ( k6_domain_1 @ sk_A @ sk_B ) )
    | ~ ( v1_subset_1 @ ( k6_domain_1 @ sk_A @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    v1_zfmisc_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    v1_subset_1 @ ( k6_domain_1 @ sk_A @ sk_B ) @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ ( k6_domain_1 @ sk_A @ sk_B ) ) ),
    inference(demod,[status(thm)],['11','12','13'])).

thf('15',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    v1_xboole_0 @ ( k6_domain_1 @ sk_A @ sk_B ) ),
    inference(clc,[status(thm)],['14','15'])).

thf(l13_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( A = k1_xboole_0 ) ) )).

thf('17',plain,(
    ! [X1: $i] :
      ( ( X1 = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[l13_xboole_0])).

thf('18',plain,
    ( ( k6_domain_1 @ sk_A @ sk_B )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,
    ( ( k1_tarski @ sk_B )
    = k1_xboole_0 ),
    inference('sup+',[status(thm)],['4','18'])).

thf(t20_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
        = ( k1_tarski @ A ) )
    <=> ( A != B ) ) )).

thf('20',plain,(
    ! [X16: $i,X17: $i] :
      ( ( X17 != X16 )
      | ( ( k4_xboole_0 @ ( k1_tarski @ X17 ) @ ( k1_tarski @ X16 ) )
       != ( k1_tarski @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t20_zfmisc_1])).

thf('21',plain,(
    ! [X16: $i] :
      ( ( k4_xboole_0 @ ( k1_tarski @ X16 ) @ ( k1_tarski @ X16 ) )
     != ( k1_tarski @ X16 ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('22',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('23',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k4_xboole_0 @ X2 @ X3 )
      = ( k5_xboole_0 @ X2 @ ( k3_xboole_0 @ X2 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('26',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(t22_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) )
      = A ) )).

thf('27',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k2_xboole_0 @ X4 @ ( k3_xboole_0 @ X4 @ X5 ) )
      = X4 ) ),
    inference(cnf,[status(esa)],[t22_xboole_1])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['26','27'])).

thf(t46_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = k1_xboole_0 ) )).

thf('29',plain,(
    ! [X6: $i,X7: $i] :
      ( ( k4_xboole_0 @ X6 @ ( k2_xboole_0 @ X6 @ X7 ) )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t46_xboole_1])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['25','30'])).

thf('32',plain,(
    ! [X16: $i] :
      ( k1_xboole_0
     != ( k1_tarski @ X16 ) ) ),
    inference(demod,[status(thm)],['21','24','31'])).

thf('33',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference('sup-',[status(thm)],['19','32'])).

thf('34',plain,(
    $false ),
    inference(simplify,[status(thm)],['33'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.15  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.16  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.XrGE3pMtyP
% 0.16/0.37  % Computer   : n022.cluster.edu
% 0.16/0.37  % Model      : x86_64 x86_64
% 0.16/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.16/0.37  % Memory     : 8042.1875MB
% 0.16/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.16/0.37  % CPULimit   : 60
% 0.16/0.37  % DateTime   : Tue Dec  1 13:41:26 EST 2020
% 0.16/0.38  % CPUTime    : 
% 0.16/0.38  % Running portfolio for 600 s
% 0.16/0.38  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.16/0.38  % Number of cores: 8
% 0.23/0.38  % Python version: Python 3.6.8
% 0.23/0.38  % Running in FO mode
% 0.24/0.52  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.24/0.52  % Solved by: fo/fo7.sh
% 0.24/0.52  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.24/0.52  % done 77 iterations in 0.028s
% 0.24/0.52  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.24/0.52  % SZS output start Refutation
% 0.24/0.52  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.24/0.52  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.24/0.52  thf(v1_zfmisc_1_type, type, v1_zfmisc_1: $i > $o).
% 0.24/0.52  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.24/0.52  thf(sk_A_type, type, sk_A: $i).
% 0.24/0.52  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.24/0.52  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.24/0.52  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.24/0.52  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.24/0.52  thf(v1_subset_1_type, type, v1_subset_1: $i > $i > $o).
% 0.24/0.52  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.24/0.52  thf(sk_B_type, type, sk_B: $i).
% 0.24/0.52  thf(k6_domain_1_type, type, k6_domain_1: $i > $i > $i).
% 0.24/0.52  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.24/0.52  thf(t6_tex_2, conjecture,
% 0.24/0.52    (![A:$i]:
% 0.24/0.52     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.24/0.52       ( ![B:$i]:
% 0.24/0.52         ( ( m1_subset_1 @ B @ A ) =>
% 0.24/0.52           ( ~( ( v1_subset_1 @ ( k6_domain_1 @ A @ B ) @ A ) & 
% 0.24/0.52                ( v1_zfmisc_1 @ A ) ) ) ) ) ))).
% 0.24/0.52  thf(zf_stmt_0, negated_conjecture,
% 0.24/0.52    (~( ![A:$i]:
% 0.24/0.52        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.24/0.52          ( ![B:$i]:
% 0.24/0.52            ( ( m1_subset_1 @ B @ A ) =>
% 0.24/0.52              ( ~( ( v1_subset_1 @ ( k6_domain_1 @ A @ B ) @ A ) & 
% 0.24/0.52                   ( v1_zfmisc_1 @ A ) ) ) ) ) ) )),
% 0.24/0.52    inference('cnf.neg', [status(esa)], [t6_tex_2])).
% 0.24/0.52  thf('0', plain, ((m1_subset_1 @ sk_B @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf(redefinition_k6_domain_1, axiom,
% 0.24/0.52    (![A:$i,B:$i]:
% 0.24/0.52     ( ( ( ~( v1_xboole_0 @ A ) ) & ( m1_subset_1 @ B @ A ) ) =>
% 0.24/0.52       ( ( k6_domain_1 @ A @ B ) = ( k1_tarski @ B ) ) ))).
% 0.24/0.52  thf('1', plain,
% 0.24/0.52      (![X25 : $i, X26 : $i]:
% 0.24/0.52         ((v1_xboole_0 @ X25)
% 0.24/0.52          | ~ (m1_subset_1 @ X26 @ X25)
% 0.24/0.52          | ((k6_domain_1 @ X25 @ X26) = (k1_tarski @ X26)))),
% 0.24/0.52      inference('cnf', [status(esa)], [redefinition_k6_domain_1])).
% 0.24/0.52  thf('2', plain,
% 0.24/0.52      ((((k6_domain_1 @ sk_A @ sk_B) = (k1_tarski @ sk_B))
% 0.24/0.52        | (v1_xboole_0 @ sk_A))),
% 0.24/0.52      inference('sup-', [status(thm)], ['0', '1'])).
% 0.24/0.52  thf('3', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf('4', plain, (((k6_domain_1 @ sk_A @ sk_B) = (k1_tarski @ sk_B))),
% 0.24/0.52      inference('clc', [status(thm)], ['2', '3'])).
% 0.24/0.52  thf('5', plain, ((m1_subset_1 @ sk_B @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf(dt_k6_domain_1, axiom,
% 0.24/0.52    (![A:$i,B:$i]:
% 0.24/0.52     ( ( ( ~( v1_xboole_0 @ A ) ) & ( m1_subset_1 @ B @ A ) ) =>
% 0.24/0.52       ( m1_subset_1 @ ( k6_domain_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.24/0.52  thf('6', plain,
% 0.24/0.52      (![X23 : $i, X24 : $i]:
% 0.24/0.52         ((v1_xboole_0 @ X23)
% 0.24/0.52          | ~ (m1_subset_1 @ X24 @ X23)
% 0.24/0.52          | (m1_subset_1 @ (k6_domain_1 @ X23 @ X24) @ (k1_zfmisc_1 @ X23)))),
% 0.24/0.52      inference('cnf', [status(esa)], [dt_k6_domain_1])).
% 0.24/0.52  thf('7', plain,
% 0.24/0.52      (((m1_subset_1 @ (k6_domain_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))
% 0.24/0.52        | (v1_xboole_0 @ sk_A))),
% 0.24/0.52      inference('sup-', [status(thm)], ['5', '6'])).
% 0.24/0.52  thf('8', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf('9', plain,
% 0.24/0.52      ((m1_subset_1 @ (k6_domain_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.24/0.52      inference('clc', [status(thm)], ['7', '8'])).
% 0.24/0.52  thf(cc2_tex_2, axiom,
% 0.24/0.52    (![A:$i]:
% 0.24/0.52     ( ( ( ~( v1_xboole_0 @ A ) ) & ( v1_zfmisc_1 @ A ) ) =>
% 0.24/0.52       ( ![B:$i]:
% 0.24/0.52         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.24/0.52           ( ( ~( v1_xboole_0 @ B ) ) => ( ~( v1_subset_1 @ B @ A ) ) ) ) ) ))).
% 0.24/0.52  thf('10', plain,
% 0.24/0.52      (![X27 : $i, X28 : $i]:
% 0.24/0.52         (~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ X28))
% 0.24/0.52          | ~ (v1_subset_1 @ X27 @ X28)
% 0.24/0.52          | (v1_xboole_0 @ X27)
% 0.24/0.52          | ~ (v1_zfmisc_1 @ X28)
% 0.24/0.52          | (v1_xboole_0 @ X28))),
% 0.24/0.52      inference('cnf', [status(esa)], [cc2_tex_2])).
% 0.24/0.52  thf('11', plain,
% 0.24/0.52      (((v1_xboole_0 @ sk_A)
% 0.24/0.52        | ~ (v1_zfmisc_1 @ sk_A)
% 0.24/0.52        | (v1_xboole_0 @ (k6_domain_1 @ sk_A @ sk_B))
% 0.24/0.52        | ~ (v1_subset_1 @ (k6_domain_1 @ sk_A @ sk_B) @ sk_A))),
% 0.24/0.52      inference('sup-', [status(thm)], ['9', '10'])).
% 0.24/0.52  thf('12', plain, ((v1_zfmisc_1 @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf('13', plain, ((v1_subset_1 @ (k6_domain_1 @ sk_A @ sk_B) @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf('14', plain,
% 0.24/0.52      (((v1_xboole_0 @ sk_A) | (v1_xboole_0 @ (k6_domain_1 @ sk_A @ sk_B)))),
% 0.24/0.52      inference('demod', [status(thm)], ['11', '12', '13'])).
% 0.24/0.52  thf('15', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.24/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.52  thf('16', plain, ((v1_xboole_0 @ (k6_domain_1 @ sk_A @ sk_B))),
% 0.24/0.52      inference('clc', [status(thm)], ['14', '15'])).
% 0.24/0.52  thf(l13_xboole_0, axiom,
% 0.24/0.52    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( ( A ) = ( k1_xboole_0 ) ) ))).
% 0.24/0.52  thf('17', plain,
% 0.24/0.52      (![X1 : $i]: (((X1) = (k1_xboole_0)) | ~ (v1_xboole_0 @ X1))),
% 0.24/0.52      inference('cnf', [status(esa)], [l13_xboole_0])).
% 0.24/0.52  thf('18', plain, (((k6_domain_1 @ sk_A @ sk_B) = (k1_xboole_0))),
% 0.24/0.52      inference('sup-', [status(thm)], ['16', '17'])).
% 0.24/0.52  thf('19', plain, (((k1_tarski @ sk_B) = (k1_xboole_0))),
% 0.24/0.52      inference('sup+', [status(thm)], ['4', '18'])).
% 0.24/0.52  thf(t20_zfmisc_1, axiom,
% 0.24/0.52    (![A:$i,B:$i]:
% 0.24/0.52     ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =
% 0.24/0.52         ( k1_tarski @ A ) ) <=>
% 0.24/0.52       ( ( A ) != ( B ) ) ))).
% 0.24/0.52  thf('20', plain,
% 0.24/0.52      (![X16 : $i, X17 : $i]:
% 0.24/0.52         (((X17) != (X16))
% 0.24/0.52          | ((k4_xboole_0 @ (k1_tarski @ X17) @ (k1_tarski @ X16))
% 0.24/0.52              != (k1_tarski @ X17)))),
% 0.24/0.52      inference('cnf', [status(esa)], [t20_zfmisc_1])).
% 0.24/0.52  thf('21', plain,
% 0.24/0.52      (![X16 : $i]:
% 0.24/0.52         ((k4_xboole_0 @ (k1_tarski @ X16) @ (k1_tarski @ X16))
% 0.24/0.52           != (k1_tarski @ X16))),
% 0.24/0.52      inference('simplify', [status(thm)], ['20'])).
% 0.24/0.52  thf(idempotence_k3_xboole_0, axiom,
% 0.24/0.52    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.24/0.52  thf('22', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.24/0.52      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.24/0.52  thf(t100_xboole_1, axiom,
% 0.24/0.52    (![A:$i,B:$i]:
% 0.24/0.52     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.24/0.52  thf('23', plain,
% 0.24/0.52      (![X2 : $i, X3 : $i]:
% 0.24/0.52         ((k4_xboole_0 @ X2 @ X3)
% 0.24/0.52           = (k5_xboole_0 @ X2 @ (k3_xboole_0 @ X2 @ X3)))),
% 0.24/0.52      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.24/0.52  thf('24', plain,
% 0.24/0.52      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.24/0.52      inference('sup+', [status(thm)], ['22', '23'])).
% 0.24/0.52  thf('25', plain,
% 0.24/0.52      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.24/0.52      inference('sup+', [status(thm)], ['22', '23'])).
% 0.24/0.52  thf('26', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.24/0.52      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.24/0.52  thf(t22_xboole_1, axiom,
% 0.24/0.52    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) = ( A ) ))).
% 0.24/0.52  thf('27', plain,
% 0.24/0.52      (![X4 : $i, X5 : $i]:
% 0.24/0.52         ((k2_xboole_0 @ X4 @ (k3_xboole_0 @ X4 @ X5)) = (X4))),
% 0.24/0.52      inference('cnf', [status(esa)], [t22_xboole_1])).
% 0.24/0.52  thf('28', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ X0) = (X0))),
% 0.24/0.52      inference('sup+', [status(thm)], ['26', '27'])).
% 0.24/0.52  thf(t46_xboole_1, axiom,
% 0.24/0.52    (![A:$i,B:$i]:
% 0.24/0.52     ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( k1_xboole_0 ) ))).
% 0.24/0.52  thf('29', plain,
% 0.24/0.52      (![X6 : $i, X7 : $i]:
% 0.24/0.52         ((k4_xboole_0 @ X6 @ (k2_xboole_0 @ X6 @ X7)) = (k1_xboole_0))),
% 0.24/0.52      inference('cnf', [status(esa)], [t46_xboole_1])).
% 0.24/0.52  thf('30', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.24/0.52      inference('sup+', [status(thm)], ['28', '29'])).
% 0.24/0.52  thf('31', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.24/0.52      inference('sup+', [status(thm)], ['25', '30'])).
% 0.24/0.52  thf('32', plain, (![X16 : $i]: ((k1_xboole_0) != (k1_tarski @ X16))),
% 0.24/0.52      inference('demod', [status(thm)], ['21', '24', '31'])).
% 0.24/0.52  thf('33', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.24/0.52      inference('sup-', [status(thm)], ['19', '32'])).
% 0.24/0.52  thf('34', plain, ($false), inference('simplify', [status(thm)], ['33'])).
% 0.24/0.52  
% 0.24/0.52  % SZS output end Refutation
% 0.24/0.52  
% 0.24/0.53  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
