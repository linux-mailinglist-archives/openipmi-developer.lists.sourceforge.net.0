Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F043EB4B5
	for <lists+openipmi-developer@lfdr.de>; Fri, 13 Aug 2021 13:49:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mEVgS-00013a-Ov; Fri, 13 Aug 2021 11:49:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mEVgQ-00013C-Ue
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Aug 2021 11:49:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j99YooQkfROtzBamzGgQZBuB73XacxclB7Ufl10wsf4=; b=EHYpEwohOyBPHukn4BJ/JIWn0I
 bnRoNtu4c7zDuerkrWpZTas+oF+bDzMfUigmeku6jqvz6GSzFe0jIC+Gp5vo1cpnkciHujziopnAX
 E23PACF758awYINNZyi6QiwFd23T/eghh7qskoVwX5NmqAwMEj4Pr+cjcgIaBXeQHfLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j99YooQkfROtzBamzGgQZBuB73XacxclB7Ufl10wsf4=; b=CxKRDApEuwiTCvhf0YhsgFMldb
 3+1YSYElfm36viuornoAPl0Bh5Yrd6aOP19oQwn4n2+HvFTzYiHI2DTwb4zUbeA+tdjQ7+oadau/l
 6/AsLZ0+yYW21e5hCh6SIPom/WMOAmiQMUDyAGEwaOpF1a8MYUtksZUzU5gO6++ojUOM=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEVgP-0008Hn-KB
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Aug 2021 11:49:06 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 61-20020a9d0d430000b02903eabfc221a9so11802672oti.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Aug 2021 04:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=j99YooQkfROtzBamzGgQZBuB73XacxclB7Ufl10wsf4=;
 b=pY9U+vw4verknqbJJ+O2iyWdnwUkiPjI373h6cFpiBNhiN8Oz/AH6LcBi/rV/x4VPr
 BRJgNg2WSLm7rULzrNqjIbsL3D6jDe72DbAGyU4qYdxrL2fVkMe+EwPqt3IAy+SyD6ma
 FY/zU7FzH6SUf/WvvPvMAhBRJ5PY88pbWOWm/gKypkGVIm/j4k6KQi3/gBf5xkSho3CK
 SoagjWgp7Xse9PxSzdyUS2hl/r81FnHIKtB5BBsylgsJJCTgsTplRDDOrxmONOad2X8w
 8VEIbjWzzyvAMt1chRnyH+hBwMl3vK1+gCpGOYWw04PlTJKMOMlc73J8S5xNphcncVCb
 4upA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=j99YooQkfROtzBamzGgQZBuB73XacxclB7Ufl10wsf4=;
 b=NWN8kowpF7JCnKFQzdU3jh+kikthVF1ia6O2Ecw+Usg4Mzn4I9xEVCUPyEgPETuH4W
 lwPejoA/tEac3KKCwzKr9J8Q3xeKfWNfcUKvxGMDQVW18fykx9KjBw9xpwMym2ejQbTW
 eq98lbibocekCD8iOS0EJfsAPUmo6IpcUq+WYb++zL42kPDiI3fxNhiQb9t0KClRmEIt
 aYl0WdH/biEPTvog4GThqr8EM/AO1wPGGWdM6BWehLW2hupbrUDHxUzWVX7i0ZJMjXav
 LBV2pLnefYTBxaByf5eL/bSeWjQIEemj4ToiELaA4s1PpPd85pN8UU2dhRpDF7R0IrDz
 fuIw==
X-Gm-Message-State: AOAM533arCVRahtb3jA0Q2XF+tn7llPwVusCyv9ldiothhD3ajrWy5SC
 KO6VLPfxNU48CuxKLZus7gkBYq1u1hUV
X-Google-Smtp-Source: ABdhPJx+4I4+fpJ5/ZecgFNZpQxQ+hsu59UA2lQuvjJtajv6k7sCHsGjxqcjF1cnRxabWTbw7jmLsg==
X-Received: by 2002:a9d:1b48:: with SMTP id l66mr1822385otl.261.1628855339980; 
 Fri, 13 Aug 2021 04:48:59 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id s184sm289633oif.20.2021.08.13.04.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 04:48:59 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:39aa:3f67:e568:698d])
 by serve.minyard.net (Postfix) with ESMTPSA id 379F3181623;
 Fri, 13 Aug 2021 11:48:58 +0000 (UTC)
Date: Fri, 13 Aug 2021 06:48:57 -0500
From: Corey Minyard <minyard@acm.org>
To: Wen Yang <wenyang@linux.alibaba.com>
Message-ID: <20210813114857.GV3406@minyard.net>
References: <20210813111257.78405-1-wenyang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210813111257.78405-1-wenyang@linux.alibaba.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1mEVgP-0008Hn-KB
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix compilation warnings
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
Cc: openipmi-developer@lists.sourceforge.net, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 13, 2021 at 07:12:57PM +0800, Wen Yang wrote:
> fix the following compilation warnings:
> 
> >> drivers/char/ipmi/ipmi_si_intf.c:689:5: error: expected ')'
>                                    msg[2]);
>                                    ^
> drivers/char/ipmi/ipmi_si_intf.c:686:4: note: to match this '('
>                            dev_warn_ratelimited(smi_info->io.dev,

Thanks, I already fixed this.

-corey

> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 5bf9271..6ccaa01 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -592,7 +592,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
>  		if (msg[2] != 0) {
>  			/* Error clearing flags */
>  			dev_warn_ratelimited(smi_info->io.dev,
> -				 "Error clearing flags: %2.2x\n", msg[2]);
> +					     "Error clearing flags: %2.2x\n", msg[2]);
>  		}
>  		smi_info->si_state = SI_NORMAL;
>  		break;
> @@ -684,9 +684,8 @@ static void handle_transaction_done(struct smi_info *smi_info)
>  		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
>  		if (msg[2] != 0) {
>  			dev_warn_ratelimited(smi_info->io.dev,
> -				"Couldn't get irq info: %x,\n"
> -				"Maybe ok, but ipmi might run very slowly.\n",
> -				msg[2]);
> +					     "Couldn't get irq info: %x. Maybe ok, but ipmi might run very slowly.\n",
> +					     msg[2]);
>  			smi_info->si_state = SI_NORMAL;
>  			break;
>  		}
> @@ -722,8 +721,8 @@ static void handle_transaction_done(struct smi_info *smi_info)
>  		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
>  		if (msg[2] != 0)
>  			dev_warn_ratelimited(smi_info->io.dev,
> -				 "Could not set the global enables: 0x%x.\n",
> -				 msg[2]);
> +					     "Could not set the global enables: 0x%x.\n",
> +					     msg[2]);
>  
>  		if (smi_info->supports_event_msg_buff) {
>  			smi_info->curr_msg = ipmi_alloc_smi_msg();
> @@ -1344,8 +1343,8 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  		if (cc != IPMI_CC_NO_ERROR &&
>  		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>  			dev_warn_ratelimited(smi_info->io.dev,
> -			    "BMC returned 0x%2.2x, retry get bmc device id\n",
> -			    cc);
> +					     "BMC returned 0x%2.2x, retry get bmc device id\n",
> +					     cc);
>  			goto retry;
>  		}
>  	}
> -- 
> 1.8.3.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
