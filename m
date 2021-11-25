Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B1A45DCB9
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Nov 2021 15:52:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mqG6V-0003QO-4F; Thu, 25 Nov 2021 14:52:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mqG6T-0003Q8-KS
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Nov 2021 14:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UuP+q7dpgzZ7ETGJ3BMqQuEAc2SBGaUx4tCk02snGqs=; b=kSqT64FTSmM2I91Qt8wdHdnJWd
 j+EMy4XGV/qdxE3rDiyedUBO8USUNcgCcfE21fIcowhnBVrjSkiU6INxUNr7OjW06k9OZm5ym0GW8
 D5CtFwdjOBn4VGyHPWqX2EHVbiO0vCSJRVsFDAgQdiJGWHcjbvAgh3AcL9GOFWysY3N4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UuP+q7dpgzZ7ETGJ3BMqQuEAc2SBGaUx4tCk02snGqs=; b=cWP0zu3tkO/gUW5vrD4IIlVEi4
 S0IIWR8nWueEmDcZ8mXTjqWYOl7+RbIWAG/7Sg7Fj6DZd01jUIYLf/2jK7tk4rsd6sSY84za6P1Po
 LcJhdKi748hD+MmiM2pu25vQ/+aYBdfG7TR2KbZ2jbyvAuDxxV/xKchBb3Foocp0P2fM=;
Received: from mail-qv1-f54.google.com ([209.85.219.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqG6N-008v9G-SL
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Nov 2021 14:52:01 +0000
Received: by mail-qv1-f54.google.com with SMTP id a24so4764605qvb.5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Nov 2021 06:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=UuP+q7dpgzZ7ETGJ3BMqQuEAc2SBGaUx4tCk02snGqs=;
 b=fM1jRHmKlxCSALF2BMLjFpdxi0+DpLUEF0CE+7cm6el1TE1it5FC/E0MRUPpLMyq2/
 apF5Qwdx1iFeZUtvuGCA4wCJb+VAO9vqXSp4WNecbZPhXUMzZK7kkoWNVbuRGjvw49Jx
 gD5RlN2G9kWmQQs0j38rRU8nNN31f96s8nIFjnLFi31i41CoFfdzSXuZ1ow1yNaHlvIJ
 i3qxjHjmzZ4YSZ1eIW/hL8PFw5FYLBdBN+5C4ljWQO8UO8c2SHL0Wzx43tRReSLAYPED
 9fTlKq8WDq5nrAtmwWQfnyJ+f9ZXxCLYNIoJC2YM0P5tjWnO355f9/f74W3wHr6qJuDF
 lH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=UuP+q7dpgzZ7ETGJ3BMqQuEAc2SBGaUx4tCk02snGqs=;
 b=Pb1k7TIXOJN3sTb2JfL+ez4JnJ4n9Srj3Mf0SQoO79WOOlEPv1Nt4/teVQMzH4RbSu
 YHWoPxEVpjClXwO1W4nC6PJNqLF1tVRb62Fi8YNziQ8ufvp4b2w0iJmqMQLJLG5ZBKIs
 bCAuAAoFfvRffk/G1ukkDSLanhC7gqiNygEA9QXj6osBFoZltPHNafwRbZ922pnxu2gS
 PeAyV1Ztjt7ARPJUtyEwyiOtWJdowbsyk/5klPpPOUWwXSyyvUymhao9bxpOGdZzUYir
 HWD5X5B5J5qbtfOxlTgtdH2mm7amOra1jZkbshAI5iHJOWy183ZTOI7B51KwPj0o9ePa
 Qs0w==
X-Gm-Message-State: AOAM533LgDuTSHru5R8g5FyFOeNfhGIkrP0//7Voe2NezEJC8Iu8Kdm4
 DlQ19F9hgxKFFUtw/ZJIf+ZOXVW6Dw==
X-Google-Smtp-Source: ABdhPJzLKjHColCTlxfDSoOWqtDm+uF4YuyRv2RaksronnTSbxH1is69bfVjzbmzdsfyvZsArgLCIg==
X-Received: by 2002:a0c:c186:: with SMTP id n6mr6120261qvh.117.1637851909953; 
 Thu, 25 Nov 2021 06:51:49 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k19sm1535430qko.73.2021.11.25.06.51.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:51:49 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:adf8:b831:eb9b:b451])
 by serve.minyard.net (Postfix) with ESMTPSA id 517591800BA;
 Thu, 25 Nov 2021 14:51:48 +0000 (UTC)
Date: Thu, 25 Nov 2021 08:51:47 -0600
From: Corey Minyard <minyard@acm.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211125145147.GW15676@minyard.net>
References: <20211124210413.1951047-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211124210413.1951047-1-kuba@kernel.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 24, 2021 at 01:04:13PM -0800,
 Jakub Kicinski wrote:
 > We check if response is the right size but if it's not we jump > to
 return_unspecified
 which creates a response of size 3. > We need s [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqG6N-008v9G-SL
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix
 IPMI_SMI_MSG_TYPE_IPMB_DIRECT response length checking
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, andrew.manley@sealingtech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 24, 2021 at 01:04:13PM -0800, Jakub Kicinski wrote:
> We check if response is the right size but if it's not we jump
> to return_unspecified which creates a response of size 3.
> We need size 4 to prevent OOB in handle_ipmb_direct_rcv_rsp().
> Was this supposed to override the message type, too?
> 
> Fixes: 059747c245f0 ("ipmi: Add support for IPMB direct messages")
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
> Dunno if this is the right fix, but the bug is pretty clearly there.

Yeah, not the right fix, but clearly a bug.  A proper response with an
error needs to be formatted for IPMB mode.  Also, the sizes were wrong.
The format of these messages is described in include/linux/ipmi_smi.h.
The formatting was changed during the design and this was missed.

I'll send out a patch for this.

-corey

> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index f0b18c25cbb1..0011b04f43c9 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4453,6 +4453,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
>  		msg->rsp[0] = msg->data[0] | (1 << 2);
>  		msg->rsp[1] = msg->data[1];
>  		msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
> +		msg->type = IPMI_SMI_MSG_TYPE_NORMAL;
>  		msg->rsp_size = 3;
>  	} else if (msg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
>  		/* commands must have at least 3 bytes, responses 4. */
> -- 
> 2.31.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
