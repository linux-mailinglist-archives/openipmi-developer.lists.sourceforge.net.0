Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7149F32F005
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Mar 2021 17:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lIDJT-0002V1-43; Fri, 05 Mar 2021 16:28:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lIDJR-0002Uo-Qy
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Mar 2021 16:28:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lUGxFCa19Qge6BfZF3XEo9svsUoPl+tPT1E5xfKUypY=; b=NSe8+4Ea2Wt4x9W0Fv3xTyRJGE
 C6RcS8RxfcI2u3/HkzCSQ5OY8l4w6j82RzGZgkilmXBSEL2vRHoBp18ryFO5jmv+qIkJtDA4kx7mf
 Sofjn8OSNuur7BQ6Xagq11KcqrXyFulK4i1Pb5JiEFFQuWKIHFFYfa8cgG2XSaGyphiU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lUGxFCa19Qge6BfZF3XEo9svsUoPl+tPT1E5xfKUypY=; b=WIWFIgn+FQ2e6Eh4PCRIOZBKAs
 1l15XM4ht5Cs+ZqQ1SAG6Go7GQ8PusNy8S+vV+Uqz0kYki432FCZqLeddoabPkmzEyKWT+I5mZ57t
 +v7y9sOCWSV2n1CizYIdWhJW5X1YVcHPZFxlGSdaC4GLAEEIK+MN3LPTDbocPGWaP1gk=;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lIDJI-0003jP-Qs
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Mar 2021 16:28:25 +0000
Received: by mail-ot1-f42.google.com with SMTP id d9so2310085ote.12
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Mar 2021 08:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=lUGxFCa19Qge6BfZF3XEo9svsUoPl+tPT1E5xfKUypY=;
 b=b3Vc9HVFsH7dG2dvFFlT+2vCVZUi7IfBDZcZfHVskNF1zOcUp/LI21gf+lQCon71Nt
 lR3KFZJU5GWX2izLs9UwdZdRa/PRr+L6MgJX35i7kVhYSveq4Slkip/+9so/RvPt0mkb
 DUAM//Pnq9zntP6B57Eb2CfDfiwV2eUQnPUOaEcvWLeZJMdeTnbf15AWYEXEyT2/jwgk
 BKCJ1IE1h90e1OUer9I+ONvYOUD0kqxfE087DDPN7Kxb2BxzaiZL2x0xw38++N96WuQe
 PHxdtB5opwuNlHjvPw0+iMSW+kQaD5w64Yz1l0+FWi3i+/0qSQqS+gyi+nr4WJ7kZdTg
 KlvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=lUGxFCa19Qge6BfZF3XEo9svsUoPl+tPT1E5xfKUypY=;
 b=o8IHKMkezWZ5KH6EpQ30UEGjaH1DUGPG0JbcP45CBdAkm2TQIZSBxv8SQSpHgCC35Y
 h48UOZliN2IqWMrIxvrWM+9mDI6CBkT2gan+M44Jkbz8dOdaaY8BYQOwX/kq4TqymBze
 s/58c9VxWrgOsFR53GACMS+YqYd0rHJ7rwDmpD2exZXXix+MOKY4H+7XE62SlVz1pmU9
 NFDi4POjgTQSzK6j2TcCpzvWzZknfQlIZSq5tFq7sG2At/skxESLGEUO4RAyFtfxkjEq
 8dkxeBl38sj7o8ZrAzsXpflN7iFZcu9PLXUy/hD5R/p3ExpJzfQq2SUbuwHkWeNvPHeQ
 ehzg==
X-Gm-Message-State: AOAM532VciA1juUtTKc6kYPp2TqX8+MR5ckhkgFj/T6RRV8Ow4yiwmyg
 y/bvqoWO9U9tBZZKn/QI/NrpqlSBLQ==
X-Google-Smtp-Source: ABdhPJz/azMRQuiZWWGE6OYIMFqa2yvThlz0NtS0KSJiiK70pYeeIwBjKw1D6ZZP0/rAMMTrw6DFmA==
X-Received: by 2002:a9d:4004:: with SMTP id m4mr8790449ote.63.1614961691127;
 Fri, 05 Mar 2021 08:28:11 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id b133sm606409oia.17.2021.03.05.08.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 08:28:10 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6dff:5584:10ea:8fa1])
 by serve.minyard.net (Postfix) with ESMTPSA id 779B0180053;
 Fri,  5 Mar 2021 16:28:09 +0000 (UTC)
Date: Fri, 5 Mar 2021 10:28:08 -0600
From: Corey Minyard <minyard@acm.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Message-ID: <20210305162808.GW507977@minyard.net>
References: <20210304090312.26827-1-heikki.krogerus@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210304090312.26827-1-heikki.krogerus@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.42 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lIDJI-0003jP-Qs
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Handle device properties
 with software node API
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 04, 2021 at 12:03:12PM +0300, Heikki Krogerus wrote:
> The old device property API is going to be removed.
> Replacing the device_add_properties() call with the software
> node API equivalent, device_create_managed_software_node().

Ok, this has been queued for next release.

Thanks,

-corey

> 
> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_plat_data.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_plat_data.c b/drivers/char/ipmi/ipmi_plat_data.c
> index 28471ff2a3a3e..747b51ae01a80 100644
> --- a/drivers/char/ipmi/ipmi_plat_data.c
> +++ b/drivers/char/ipmi/ipmi_plat_data.c
> @@ -102,7 +102,7 @@ struct platform_device *ipmi_platform_add(const char *name, unsigned int inst,
>  		goto err;
>  	}
>   add_properties:
> -	rv = platform_device_add_properties(pdev, pr);
> +	rv = device_create_managed_software_node(&pdev->dev, pr, NULL);
>  	if (rv) {
>  		dev_err(&pdev->dev,
>  			"Unable to add hard-code properties: %d\n", rv);
> -- 
> 2.30.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
