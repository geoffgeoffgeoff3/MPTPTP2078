%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PMhNE0rqmD

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:43:26 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   40 (  62 expanded)
%              Number of leaves         :   15 (  26 expanded)
%              Depth                    :   10
%              Number of atoms          :  264 ( 568 expanded)
%              Number of equality atoms :   28 (  59 expanded)
%              Maximal formula depth    :   13 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t188_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ! [C: $i,D: $i] :
              ( ( ( r1_tarski @ C @ D )
                & ( ( k7_relat_1 @ A @ D )
                  = ( k7_relat_1 @ B @ D ) ) )
             => ( ( k7_relat_1 @ A @ C )
                = ( k7_relat_1 @ B @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i] :
            ( ( v1_relat_1 @ B )
           => ! [C: $i,D: $i] :
                ( ( ( r1_tarski @ C @ D )
                  & ( ( k7_relat_1 @ A @ D )
                    = ( k7_relat_1 @ B @ D ) ) )
               => ( ( k7_relat_1 @ A @ C )
                  = ( k7_relat_1 @ B @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t188_relat_1])).

thf('0',plain,(
    r1_tarski @ sk_C @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ X1 )
        = X0 )
      | ~ ( r1_tarski @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('2',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = sk_C ),
    inference('sup-',[status(thm)],['0','1'])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('3',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k2_tarski @ X3 @ X2 )
      = ( k2_tarski @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('4',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X4 @ X5 ) )
      = ( k3_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X4 @ X5 ) )
      = ( k3_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf(t100_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
        = ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('8',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X6 @ X7 ) @ X8 )
        = ( k7_relat_1 @ X6 @ ( k3_xboole_0 @ X7 @ X8 ) ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('9',plain,
    ( ( k7_relat_1 @ sk_A @ sk_D )
    = ( k7_relat_1 @ sk_B @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X6 @ X7 ) @ X8 )
        = ( k7_relat_1 @ X6 @ ( k3_xboole_0 @ X7 @ X8 ) ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ sk_A @ sk_D ) @ X0 )
        = ( k7_relat_1 @ sk_B @ ( k3_xboole_0 @ sk_D @ X0 ) ) )
      | ~ ( v1_relat_1 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['9','10'])).

thf('12',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( k7_relat_1 @ ( k7_relat_1 @ sk_A @ sk_D ) @ X0 )
      = ( k7_relat_1 @ sk_B @ ( k3_xboole_0 @ sk_D @ X0 ) ) ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_A @ ( k3_xboole_0 @ sk_D @ X0 ) )
        = ( k7_relat_1 @ sk_B @ ( k3_xboole_0 @ sk_D @ X0 ) ) )
      | ~ ( v1_relat_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['8','13'])).

thf('15',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k7_relat_1 @ sk_A @ ( k3_xboole_0 @ sk_D @ X0 ) )
      = ( k7_relat_1 @ sk_B @ ( k3_xboole_0 @ sk_D @ X0 ) ) ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( k7_relat_1 @ sk_A @ ( k3_xboole_0 @ sk_D @ X0 ) )
      = ( k7_relat_1 @ sk_B @ ( k3_xboole_0 @ X0 @ sk_D ) ) ) ),
    inference('sup+',[status(thm)],['7','16'])).

thf('18',plain,
    ( ( k7_relat_1 @ sk_A @ ( k3_xboole_0 @ sk_D @ sk_C ) )
    = ( k7_relat_1 @ sk_B @ sk_C ) ),
    inference('sup+',[status(thm)],['2','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('20',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = sk_C ),
    inference('sup-',[status(thm)],['0','1'])).

thf('21',plain,
    ( ( k7_relat_1 @ sk_A @ sk_C )
    = ( k7_relat_1 @ sk_B @ sk_C ) ),
    inference(demod,[status(thm)],['18','19','20'])).

thf('22',plain,(
    ( k7_relat_1 @ sk_A @ sk_C )
 != ( k7_relat_1 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['21','22'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PMhNE0rqmD
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 19:03:19 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 23 iterations in 0.021s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.48  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.21/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.48  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.48  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.21/0.48  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.48  thf(t188_relat_1, conjecture,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ A ) =>
% 0.21/0.48       ( ![B:$i]:
% 0.21/0.48         ( ( v1_relat_1 @ B ) =>
% 0.21/0.48           ( ![C:$i,D:$i]:
% 0.21/0.48             ( ( ( r1_tarski @ C @ D ) & 
% 0.21/0.48                 ( ( k7_relat_1 @ A @ D ) = ( k7_relat_1 @ B @ D ) ) ) =>
% 0.21/0.48               ( ( k7_relat_1 @ A @ C ) = ( k7_relat_1 @ B @ C ) ) ) ) ) ) ))).
% 0.21/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.48    (~( ![A:$i]:
% 0.21/0.48        ( ( v1_relat_1 @ A ) =>
% 0.21/0.48          ( ![B:$i]:
% 0.21/0.48            ( ( v1_relat_1 @ B ) =>
% 0.21/0.48              ( ![C:$i,D:$i]:
% 0.21/0.48                ( ( ( r1_tarski @ C @ D ) & 
% 0.21/0.48                    ( ( k7_relat_1 @ A @ D ) = ( k7_relat_1 @ B @ D ) ) ) =>
% 0.21/0.48                  ( ( k7_relat_1 @ A @ C ) = ( k7_relat_1 @ B @ C ) ) ) ) ) ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t188_relat_1])).
% 0.21/0.48  thf('0', plain, ((r1_tarski @ sk_C @ sk_D)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf(t28_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.21/0.48  thf('1', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         (((k3_xboole_0 @ X0 @ X1) = (X0)) | ~ (r1_tarski @ X0 @ X1))),
% 0.21/0.48      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.21/0.48  thf('2', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (sk_C))),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.48  thf(commutativity_k2_tarski, axiom,
% 0.21/0.48    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.21/0.48  thf('3', plain,
% 0.21/0.48      (![X2 : $i, X3 : $i]: ((k2_tarski @ X3 @ X2) = (k2_tarski @ X2 @ X3))),
% 0.21/0.48      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.21/0.48  thf(t12_setfam_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (![X4 : $i, X5 : $i]:
% 0.21/0.48         ((k1_setfam_1 @ (k2_tarski @ X4 @ X5)) = (k3_xboole_0 @ X4 @ X5))),
% 0.21/0.48      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.48      inference('sup+', [status(thm)], ['3', '4'])).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (![X4 : $i, X5 : $i]:
% 0.21/0.48         ((k1_setfam_1 @ (k2_tarski @ X4 @ X5)) = (k3_xboole_0 @ X4 @ X5))),
% 0.21/0.48      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.21/0.48  thf('7', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.48      inference('sup+', [status(thm)], ['5', '6'])).
% 0.21/0.48  thf(t100_relat_1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ C ) =>
% 0.21/0.48       ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 0.21/0.48         ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ))).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.21/0.48         (((k7_relat_1 @ (k7_relat_1 @ X6 @ X7) @ X8)
% 0.21/0.48            = (k7_relat_1 @ X6 @ (k3_xboole_0 @ X7 @ X8)))
% 0.21/0.48          | ~ (v1_relat_1 @ X6))),
% 0.21/0.48      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.21/0.48  thf('9', plain, (((k7_relat_1 @ sk_A @ sk_D) = (k7_relat_1 @ sk_B @ sk_D))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('10', plain,
% 0.21/0.48      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.21/0.48         (((k7_relat_1 @ (k7_relat_1 @ X6 @ X7) @ X8)
% 0.21/0.48            = (k7_relat_1 @ X6 @ (k3_xboole_0 @ X7 @ X8)))
% 0.21/0.48          | ~ (v1_relat_1 @ X6))),
% 0.21/0.48      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.21/0.48  thf('11', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((k7_relat_1 @ (k7_relat_1 @ sk_A @ sk_D) @ X0)
% 0.21/0.48            = (k7_relat_1 @ sk_B @ (k3_xboole_0 @ sk_D @ X0)))
% 0.21/0.48          | ~ (v1_relat_1 @ sk_B))),
% 0.21/0.48      inference('sup+', [status(thm)], ['9', '10'])).
% 0.21/0.48  thf('12', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         ((k7_relat_1 @ (k7_relat_1 @ sk_A @ sk_D) @ X0)
% 0.21/0.48           = (k7_relat_1 @ sk_B @ (k3_xboole_0 @ sk_D @ X0)))),
% 0.21/0.48      inference('demod', [status(thm)], ['11', '12'])).
% 0.21/0.48  thf('14', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((k7_relat_1 @ sk_A @ (k3_xboole_0 @ sk_D @ X0))
% 0.21/0.48            = (k7_relat_1 @ sk_B @ (k3_xboole_0 @ sk_D @ X0)))
% 0.21/0.48          | ~ (v1_relat_1 @ sk_A))),
% 0.21/0.48      inference('sup+', [status(thm)], ['8', '13'])).
% 0.21/0.48  thf('15', plain, ((v1_relat_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('16', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         ((k7_relat_1 @ sk_A @ (k3_xboole_0 @ sk_D @ X0))
% 0.21/0.48           = (k7_relat_1 @ sk_B @ (k3_xboole_0 @ sk_D @ X0)))),
% 0.21/0.48      inference('demod', [status(thm)], ['14', '15'])).
% 0.21/0.48  thf('17', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         ((k7_relat_1 @ sk_A @ (k3_xboole_0 @ sk_D @ X0))
% 0.21/0.48           = (k7_relat_1 @ sk_B @ (k3_xboole_0 @ X0 @ sk_D)))),
% 0.21/0.48      inference('sup+', [status(thm)], ['7', '16'])).
% 0.21/0.48  thf('18', plain,
% 0.21/0.48      (((k7_relat_1 @ sk_A @ (k3_xboole_0 @ sk_D @ sk_C))
% 0.21/0.48         = (k7_relat_1 @ sk_B @ sk_C))),
% 0.21/0.48      inference('sup+', [status(thm)], ['2', '17'])).
% 0.21/0.48  thf('19', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.48      inference('sup+', [status(thm)], ['5', '6'])).
% 0.21/0.48  thf('20', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (sk_C))),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.48  thf('21', plain, (((k7_relat_1 @ sk_A @ sk_C) = (k7_relat_1 @ sk_B @ sk_C))),
% 0.21/0.48      inference('demod', [status(thm)], ['18', '19', '20'])).
% 0.21/0.48  thf('22', plain,
% 0.21/0.48      (((k7_relat_1 @ sk_A @ sk_C) != (k7_relat_1 @ sk_B @ sk_C))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('23', plain, ($false),
% 0.21/0.48      inference('simplify_reflect-', [status(thm)], ['21', '22'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
