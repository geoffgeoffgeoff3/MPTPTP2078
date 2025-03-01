%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.seXdF2KuwG

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:42 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 103 expanded)
%              Number of leaves         :   22 (  41 expanded)
%              Depth                    :   12
%              Number of atoms          :  444 (1013 expanded)
%              Number of equality atoms :   24 (  33 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t157_funct_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( ( r1_tarski @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) )
          & ( r1_tarski @ A @ ( k1_relat_1 @ C ) )
          & ( v2_funct_1 @ C ) )
       => ( r1_tarski @ A @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_relat_1 @ C )
          & ( v1_funct_1 @ C ) )
       => ( ( ( r1_tarski @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) )
            & ( r1_tarski @ A @ ( k1_relat_1 @ C ) )
            & ( v2_funct_1 @ C ) )
         => ( r1_tarski @ A @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t157_funct_1])).

thf('0',plain,(
    ~ ( r1_tarski @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ ( k9_relat_1 @ sk_C @ sk_A ) @ ( k9_relat_1 @ sk_C @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('2',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k3_xboole_0 @ X8 @ X9 )
        = X8 )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('3',plain,
    ( ( k3_xboole_0 @ ( k9_relat_1 @ sk_C @ sk_A ) @ ( k9_relat_1 @ sk_C @ sk_B ) )
    = ( k9_relat_1 @ sk_C @ sk_A ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('4',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_tarski @ X11 @ X10 )
      = ( k2_tarski @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('5',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf('9',plain,
    ( ( k3_xboole_0 @ ( k9_relat_1 @ sk_C @ sk_B ) @ ( k9_relat_1 @ sk_C @ sk_A ) )
    = ( k9_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['3','8'])).

thf(t121_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( v2_funct_1 @ C )
       => ( ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) )
          = ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) ) ) ) ) )).

thf('10',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ~ ( v2_funct_1 @ X14 )
      | ( ( k9_relat_1 @ X14 @ ( k3_xboole_0 @ X15 @ X16 ) )
        = ( k3_xboole_0 @ ( k9_relat_1 @ X14 @ X15 ) @ ( k9_relat_1 @ X14 @ X16 ) ) )
      | ~ ( v1_funct_1 @ X14 )
      | ~ ( v1_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t121_funct_1])).

thf('11',plain,
    ( ( ( k9_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_B @ sk_A ) )
      = ( k9_relat_1 @ sk_C @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v2_funct_1 @ sk_C ) ),
    inference('sup+',[status(thm)],['9','10'])).

thf('12',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v2_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ( k9_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_B @ sk_A ) )
    = ( k9_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['11','12','13','14'])).

thf(t152_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( v2_funct_1 @ B )
       => ( r1_tarski @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) @ A ) ) ) )).

thf('16',plain,(
    ! [X19: $i,X20: $i] :
      ( ~ ( v2_funct_1 @ X19 )
      | ( r1_tarski @ ( k10_relat_1 @ X19 @ ( k9_relat_1 @ X19 @ X20 ) ) @ X20 )
      | ~ ( v1_funct_1 @ X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t152_funct_1])).

thf('17',plain,
    ( ( r1_tarski @ ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) ) @ ( k3_xboole_0 @ sk_B @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v2_funct_1 @ sk_C ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    v2_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    r1_tarski @ ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) ) @ ( k3_xboole_0 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['17','18','19','20'])).

thf('22',plain,(
    ! [X19: $i,X20: $i] :
      ( ~ ( v2_funct_1 @ X19 )
      | ( r1_tarski @ ( k10_relat_1 @ X19 @ ( k9_relat_1 @ X19 @ X20 ) ) @ X20 )
      | ~ ( v1_funct_1 @ X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t152_funct_1])).

thf('23',plain,(
    r1_tarski @ sk_A @ ( k1_relat_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t146_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) )
       => ( r1_tarski @ A @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) ) ) ) )).

thf('24',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( r1_tarski @ X17 @ ( k1_relat_1 @ X18 ) )
      | ( r1_tarski @ X17 @ ( k10_relat_1 @ X18 @ ( k9_relat_1 @ X18 @ X17 ) ) )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t146_funct_1])).

thf('25',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ sk_A @ ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    r1_tarski @ sk_A @ ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['25','26'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('28',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('29',plain,
    ( ~ ( r1_tarski @ ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) ) @ sk_A )
    | ( ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) )
      = sk_A ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v2_funct_1 @ sk_C )
    | ( ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) )
      = sk_A ) ),
    inference('sup-',[status(thm)],['22','29'])).

thf('31',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    v2_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,
    ( ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) )
    = sk_A ),
    inference(demod,[status(thm)],['30','31','32','33'])).

thf('35',plain,(
    r1_tarski @ sk_A @ ( k3_xboole_0 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['21','34'])).

thf('36',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('37',plain,(
    ! [X3: $i,X4: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X3 @ X4 ) @ X3 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('38',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference('sup+',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X0 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,
    ( sk_A
    = ( k3_xboole_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['35','40'])).

thf('42',plain,(
    ! [X3: $i,X4: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X3 @ X4 ) @ X3 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('43',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference('sup+',[status(thm)],['41','42'])).

thf('44',plain,(
    $false ),
    inference(demod,[status(thm)],['0','43'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.seXdF2KuwG
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 11:33:37 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.20/0.34  % Number of cores: 8
% 0.20/0.34  % Python version: Python 3.6.8
% 0.20/0.35  % Running in FO mode
% 0.21/0.54  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.54  % Solved by: fo/fo7.sh
% 0.21/0.54  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.54  % done 196 iterations in 0.088s
% 0.21/0.54  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.54  % SZS output start Refutation
% 0.21/0.54  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.54  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.54  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.54  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.54  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.21/0.54  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.54  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.21/0.54  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.21/0.54  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.54  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.54  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.54  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.21/0.54  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.54  thf(t157_funct_1, conjecture,
% 0.21/0.54    (![A:$i,B:$i,C:$i]:
% 0.21/0.54     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.54       ( ( ( r1_tarski @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) ) & 
% 0.21/0.54           ( r1_tarski @ A @ ( k1_relat_1 @ C ) ) & ( v2_funct_1 @ C ) ) =>
% 0.21/0.54         ( r1_tarski @ A @ B ) ) ))).
% 0.21/0.54  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.54    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.54        ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.54          ( ( ( r1_tarski @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) ) & 
% 0.21/0.54              ( r1_tarski @ A @ ( k1_relat_1 @ C ) ) & ( v2_funct_1 @ C ) ) =>
% 0.21/0.54            ( r1_tarski @ A @ B ) ) ) )),
% 0.21/0.54    inference('cnf.neg', [status(esa)], [t157_funct_1])).
% 0.21/0.54  thf('0', plain, (~ (r1_tarski @ sk_A @ sk_B)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('1', plain,
% 0.21/0.54      ((r1_tarski @ (k9_relat_1 @ sk_C @ sk_A) @ (k9_relat_1 @ sk_C @ sk_B))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf(t28_xboole_1, axiom,
% 0.21/0.54    (![A:$i,B:$i]:
% 0.21/0.54     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.21/0.54  thf('2', plain,
% 0.21/0.54      (![X8 : $i, X9 : $i]:
% 0.21/0.54         (((k3_xboole_0 @ X8 @ X9) = (X8)) | ~ (r1_tarski @ X8 @ X9))),
% 0.21/0.54      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.21/0.54  thf('3', plain,
% 0.21/0.54      (((k3_xboole_0 @ (k9_relat_1 @ sk_C @ sk_A) @ (k9_relat_1 @ sk_C @ sk_B))
% 0.21/0.54         = (k9_relat_1 @ sk_C @ sk_A))),
% 0.21/0.54      inference('sup-', [status(thm)], ['1', '2'])).
% 0.21/0.54  thf(commutativity_k2_tarski, axiom,
% 0.21/0.54    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.21/0.54  thf('4', plain,
% 0.21/0.54      (![X10 : $i, X11 : $i]:
% 0.21/0.54         ((k2_tarski @ X11 @ X10) = (k2_tarski @ X10 @ X11))),
% 0.21/0.54      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.21/0.54  thf(t12_setfam_1, axiom,
% 0.21/0.54    (![A:$i,B:$i]:
% 0.21/0.54     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.54  thf('5', plain,
% 0.21/0.54      (![X12 : $i, X13 : $i]:
% 0.21/0.54         ((k1_setfam_1 @ (k2_tarski @ X12 @ X13)) = (k3_xboole_0 @ X12 @ X13))),
% 0.21/0.54      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.21/0.54  thf('6', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         ((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.54      inference('sup+', [status(thm)], ['4', '5'])).
% 0.21/0.54  thf('7', plain,
% 0.21/0.54      (![X12 : $i, X13 : $i]:
% 0.21/0.54         ((k1_setfam_1 @ (k2_tarski @ X12 @ X13)) = (k3_xboole_0 @ X12 @ X13))),
% 0.21/0.54      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.21/0.54  thf('8', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.54      inference('sup+', [status(thm)], ['6', '7'])).
% 0.21/0.54  thf('9', plain,
% 0.21/0.54      (((k3_xboole_0 @ (k9_relat_1 @ sk_C @ sk_B) @ (k9_relat_1 @ sk_C @ sk_A))
% 0.21/0.54         = (k9_relat_1 @ sk_C @ sk_A))),
% 0.21/0.54      inference('demod', [status(thm)], ['3', '8'])).
% 0.21/0.54  thf(t121_funct_1, axiom,
% 0.21/0.54    (![A:$i,B:$i,C:$i]:
% 0.21/0.54     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.54       ( ( v2_funct_1 @ C ) =>
% 0.21/0.54         ( ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) =
% 0.21/0.54           ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) ) ) ) ))).
% 0.21/0.54  thf('10', plain,
% 0.21/0.54      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.21/0.54         (~ (v2_funct_1 @ X14)
% 0.21/0.54          | ((k9_relat_1 @ X14 @ (k3_xboole_0 @ X15 @ X16))
% 0.21/0.54              = (k3_xboole_0 @ (k9_relat_1 @ X14 @ X15) @ 
% 0.21/0.54                 (k9_relat_1 @ X14 @ X16)))
% 0.21/0.54          | ~ (v1_funct_1 @ X14)
% 0.21/0.54          | ~ (v1_relat_1 @ X14))),
% 0.21/0.54      inference('cnf', [status(esa)], [t121_funct_1])).
% 0.21/0.54  thf('11', plain,
% 0.21/0.54      ((((k9_relat_1 @ sk_C @ (k3_xboole_0 @ sk_B @ sk_A))
% 0.21/0.54          = (k9_relat_1 @ sk_C @ sk_A))
% 0.21/0.54        | ~ (v1_relat_1 @ sk_C)
% 0.21/0.54        | ~ (v1_funct_1 @ sk_C)
% 0.21/0.54        | ~ (v2_funct_1 @ sk_C))),
% 0.21/0.54      inference('sup+', [status(thm)], ['9', '10'])).
% 0.21/0.54  thf('12', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('13', plain, ((v1_funct_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('14', plain, ((v2_funct_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('15', plain,
% 0.21/0.54      (((k9_relat_1 @ sk_C @ (k3_xboole_0 @ sk_B @ sk_A))
% 0.21/0.54         = (k9_relat_1 @ sk_C @ sk_A))),
% 0.21/0.54      inference('demod', [status(thm)], ['11', '12', '13', '14'])).
% 0.21/0.54  thf(t152_funct_1, axiom,
% 0.21/0.54    (![A:$i,B:$i]:
% 0.21/0.54     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.21/0.54       ( ( v2_funct_1 @ B ) =>
% 0.21/0.54         ( r1_tarski @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) @ A ) ) ))).
% 0.21/0.54  thf('16', plain,
% 0.21/0.54      (![X19 : $i, X20 : $i]:
% 0.21/0.54         (~ (v2_funct_1 @ X19)
% 0.21/0.54          | (r1_tarski @ (k10_relat_1 @ X19 @ (k9_relat_1 @ X19 @ X20)) @ X20)
% 0.21/0.54          | ~ (v1_funct_1 @ X19)
% 0.21/0.54          | ~ (v1_relat_1 @ X19))),
% 0.21/0.54      inference('cnf', [status(esa)], [t152_funct_1])).
% 0.21/0.54  thf('17', plain,
% 0.21/0.54      (((r1_tarski @ (k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) @ 
% 0.21/0.54         (k3_xboole_0 @ sk_B @ sk_A))
% 0.21/0.54        | ~ (v1_relat_1 @ sk_C)
% 0.21/0.54        | ~ (v1_funct_1 @ sk_C)
% 0.21/0.54        | ~ (v2_funct_1 @ sk_C))),
% 0.21/0.54      inference('sup+', [status(thm)], ['15', '16'])).
% 0.21/0.54  thf('18', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('19', plain, ((v1_funct_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('20', plain, ((v2_funct_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('21', plain,
% 0.21/0.54      ((r1_tarski @ (k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) @ 
% 0.21/0.54        (k3_xboole_0 @ sk_B @ sk_A))),
% 0.21/0.54      inference('demod', [status(thm)], ['17', '18', '19', '20'])).
% 0.21/0.54  thf('22', plain,
% 0.21/0.54      (![X19 : $i, X20 : $i]:
% 0.21/0.54         (~ (v2_funct_1 @ X19)
% 0.21/0.54          | (r1_tarski @ (k10_relat_1 @ X19 @ (k9_relat_1 @ X19 @ X20)) @ X20)
% 0.21/0.54          | ~ (v1_funct_1 @ X19)
% 0.21/0.54          | ~ (v1_relat_1 @ X19))),
% 0.21/0.54      inference('cnf', [status(esa)], [t152_funct_1])).
% 0.21/0.54  thf('23', plain, ((r1_tarski @ sk_A @ (k1_relat_1 @ sk_C))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf(t146_funct_1, axiom,
% 0.21/0.54    (![A:$i,B:$i]:
% 0.21/0.54     ( ( v1_relat_1 @ B ) =>
% 0.21/0.54       ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) ) =>
% 0.21/0.54         ( r1_tarski @ A @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) ) ) ))).
% 0.21/0.54  thf('24', plain,
% 0.21/0.54      (![X17 : $i, X18 : $i]:
% 0.21/0.54         (~ (r1_tarski @ X17 @ (k1_relat_1 @ X18))
% 0.21/0.54          | (r1_tarski @ X17 @ (k10_relat_1 @ X18 @ (k9_relat_1 @ X18 @ X17)))
% 0.21/0.54          | ~ (v1_relat_1 @ X18))),
% 0.21/0.54      inference('cnf', [status(esa)], [t146_funct_1])).
% 0.21/0.54  thf('25', plain,
% 0.21/0.54      ((~ (v1_relat_1 @ sk_C)
% 0.21/0.54        | (r1_tarski @ sk_A @ (k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A))))),
% 0.21/0.54      inference('sup-', [status(thm)], ['23', '24'])).
% 0.21/0.54  thf('26', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('27', plain,
% 0.21/0.54      ((r1_tarski @ sk_A @ (k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)))),
% 0.21/0.54      inference('demod', [status(thm)], ['25', '26'])).
% 0.21/0.54  thf(d10_xboole_0, axiom,
% 0.21/0.54    (![A:$i,B:$i]:
% 0.21/0.54     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.21/0.54  thf('28', plain,
% 0.21/0.54      (![X0 : $i, X2 : $i]:
% 0.21/0.54         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.21/0.54      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.21/0.54  thf('29', plain,
% 0.21/0.54      ((~ (r1_tarski @ (k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) @ sk_A)
% 0.21/0.54        | ((k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) = (sk_A)))),
% 0.21/0.54      inference('sup-', [status(thm)], ['27', '28'])).
% 0.21/0.54  thf('30', plain,
% 0.21/0.54      ((~ (v1_relat_1 @ sk_C)
% 0.21/0.54        | ~ (v1_funct_1 @ sk_C)
% 0.21/0.54        | ~ (v2_funct_1 @ sk_C)
% 0.21/0.54        | ((k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) = (sk_A)))),
% 0.21/0.54      inference('sup-', [status(thm)], ['22', '29'])).
% 0.21/0.54  thf('31', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('32', plain, ((v1_funct_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('33', plain, ((v2_funct_1 @ sk_C)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('34', plain,
% 0.21/0.54      (((k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) = (sk_A))),
% 0.21/0.54      inference('demod', [status(thm)], ['30', '31', '32', '33'])).
% 0.21/0.54  thf('35', plain, ((r1_tarski @ sk_A @ (k3_xboole_0 @ sk_B @ sk_A))),
% 0.21/0.54      inference('demod', [status(thm)], ['21', '34'])).
% 0.21/0.54  thf('36', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.54      inference('sup+', [status(thm)], ['6', '7'])).
% 0.21/0.54  thf(t17_xboole_1, axiom,
% 0.21/0.54    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.21/0.54  thf('37', plain,
% 0.21/0.54      (![X3 : $i, X4 : $i]: (r1_tarski @ (k3_xboole_0 @ X3 @ X4) @ X3)),
% 0.21/0.54      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.21/0.54  thf('38', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X1 @ X0) @ X0)),
% 0.21/0.54      inference('sup+', [status(thm)], ['36', '37'])).
% 0.21/0.54  thf('39', plain,
% 0.21/0.54      (![X0 : $i, X2 : $i]:
% 0.21/0.54         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.21/0.54      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.21/0.54  thf('40', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         (~ (r1_tarski @ X0 @ (k3_xboole_0 @ X1 @ X0))
% 0.21/0.54          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.54      inference('sup-', [status(thm)], ['38', '39'])).
% 0.21/0.54  thf('41', plain, (((sk_A) = (k3_xboole_0 @ sk_B @ sk_A))),
% 0.21/0.54      inference('sup-', [status(thm)], ['35', '40'])).
% 0.21/0.54  thf('42', plain,
% 0.21/0.54      (![X3 : $i, X4 : $i]: (r1_tarski @ (k3_xboole_0 @ X3 @ X4) @ X3)),
% 0.21/0.54      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.21/0.54  thf('43', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.21/0.54      inference('sup+', [status(thm)], ['41', '42'])).
% 0.21/0.54  thf('44', plain, ($false), inference('demod', [status(thm)], ['0', '43'])).
% 0.21/0.54  
% 0.21/0.54  % SZS output end Refutation
% 0.21/0.54  
% 0.21/0.55  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
