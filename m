Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EEC7BCE5C
	for <lists+openipmi-developer@lfdr.de>; Sun,  8 Oct 2023 14:36:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qpT0z-0003fT-QN;
	Sun, 08 Oct 2023 12:36:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <horms@kernel.org>) id 1qo0yn-0007Dw-25
 for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Oct 2023 12:27:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Iba9GIF3mZgfAFqKjt5FT63ULW1EJyN4yWE7awO9Q+Q=; b=hRSnD1M9/EdBU5AaMEuXJJqLlL
 8PSAhnlJzjd56E6yjNhlImVC4Wv6aLEmlU53R4mTJfWI3OyLUIx/40/92QhtCpv/mfGIry8o5RjsN
 eDa9l17HPSPWaDXRsURSe2OxIyE4T9P7u9blfJGzFLvDymZ/KhjOH8u5zjyUDufSXMx4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Iba9GIF3mZgfAFqKjt5FT63ULW1EJyN4yWE7awO9Q+Q=; b=heUWSR7Arcxlhj5m/0HI9xpfKo
 9VuAbDrFy6USiR/f3kSeuN+wWfEphz6t/tb/c5KCmb9DwTNqsY22n8RYf7laIofdxW8Jhn9CKh7GQ
 6hAbHaAQIRET26HgoKE2RhO2WlQokAw6KaGjDXujEySC+7ANeknfaIReXkZH7dbs4zdQ=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qo0yl-00070Q-Fy for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Oct 2023 12:27:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0371FCE1C17;
 Wed,  4 Oct 2023 12:27:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 518ACC433C9;
 Wed,  4 Oct 2023 12:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696422460;
 bh=jLtpvUu3o2mCQfgfqelejQUPXc1SMpmQFBdmvnSadmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kRDgIR6WXxZmRUOX9AEKsETpXqUxHBzUG3ZCxQNV3A7erIU9r4H3qNZEIpmsNZ6vd
 +YHymlJhFlVRq/pg0hiFAm2cc9E4cdWW3wZqZdKHxOAOZ1BlIYJiqkYttXL8/Kep6p
 MiReP0tpPrGNdcUMIoRYJZWGBtXFlMaTRItg1RyOX/sAVu/Lqvy9BKvV30ojNCVHgn
 aQcx+pXRM38ku9h0V2Acup8diwx67h2bgNr96QT+z0SUui2EcOK+dbzLcmsKo79S2E
 vH8GGZ7E49F7rpSxVAbzeKbw5xO07Ece7lYGYdFF1nL+T47G+Ux27S1d3AekE4fi6B
 I4VhYRuyZ9aXQ==
Date: Wed, 4 Oct 2023 14:27:33 +0200
From: Simon Horman <horms@kernel.org>
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Message-ID: <ZR1aNb0+D+uO+Qm8@kernel.org>
References: <20231003131505.337-1-aladyshev22@gmail.com>
 <20231003131505.337-4-aladyshev22@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003131505.337-4-aladyshev22@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 03, 2023 at 04:15:05PM +0300,
 Konstantin Aladyshev
 wrote: > This change adds a MCTP KCS transport binding, as defined by the
 DMTF > specificiation DSP0254 - "MCTP KCS Transport Binding". > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qo0yl-00070Q-Fy
X-Mailman-Approved-At: Sun, 08 Oct 2023 12:36:08 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 3/3] mctp: Add MCTP-over-KCS
 transport binding
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: tmaimon77@gmail.com, minyard@acm.org, yuenn@google.com, andrew@aj.id.au,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, avifishman70@gmail.com, edumazet@google.com,
 netdev@vger.kernel.org, linux-aspeed@lists.ozlabs.org, kuba@kernel.org,
 jk@codeconstruct.com.au, matt@codeconstruct.com.au, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 03, 2023 at 04:15:05PM +0300, Konstantin Aladyshev wrote:
> This change adds a MCTP KCS transport binding, as defined by the DMTF
> specificiation DSP0254 - "MCTP KCS Transport Binding".
> A MCTP protocol network device is created for each KCS channel found in
> the system.
> The interrupt code for the KCS state machine is based on the current
> IPMI KCS driver.
> 
> Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>

...

> diff --git a/drivers/net/mctp/mctp-kcs.c b/drivers/net/mctp/mctp-kcs.c

...

> +static inline void set_state(struct mctp_kcs *mkcs, u8 state)

Hi Konstantin,

Please avoid the inline keyword in C files unless there is a demonstrable
reason to use it. In general, the compiler should be left to decide.

> +{
> +	dev_dbg(mkcs->client.dev->dev, "%s: state=0x%02x", __func__, state);
> +	kcs_bmc_update_status(mkcs->client.dev, KCS_STATUS_STATE_MASK,
> +			      KCS_STATUS_STATE(state));
> +}

...

> +static inline struct mctp_kcs *client_to_mctp_kcs(struct kcs_bmc_client *client)

Ditto.

> +{
> +	return container_of(client, struct mctp_kcs, client);
> +}

...


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
