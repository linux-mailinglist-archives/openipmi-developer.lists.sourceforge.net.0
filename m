Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F05075250A8
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 May 2022 16:52:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1npABO-0004Ox-Fa; Thu, 12 May 2022 14:52:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1npABA-0004DG-Jx
 for openipmi-developer@lists.sourceforge.net; Thu, 12 May 2022 14:52:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bb5erSJHP1iwPKC6T9LjpPBBOxxIiwttxQXC8w5mYu8=; b=RGxhqSE/NX25yJzdWEDJBgjI/P
 +lHF5FvnpOoqx255Ot3T7JbovYPWr7vQRLQvMbIw741+z4lighstsVwak9iDMYbbOFk2gyOUHa2XV
 ytjzgpDry2jLGjHfeDzNCflCVis0CkMlhWyG7Qfp2r4Pb7c6L3AOnXKP/iBd19rF1LAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bb5erSJHP1iwPKC6T9LjpPBBOxxIiwttxQXC8w5mYu8=; b=aiOHgO6epp+sQ75KIXCFC3Wk4v
 A0H/yHgSpHCu3a6IMcN+UjnDhMdvUJ4wOZVJ8i2L+mMbQz1I7s90bsfRx2tIf8fLC8awVPtr9gbQh
 DJIpV1xQCq2Lx7juEFJjs4w+Tt1qdxb9241lP06DzIhyIykm/6pDY2YCKPSdZ76EvDQo=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1npAB7-009pwd-6R
 for openipmi-developer@lists.sourceforge.net; Thu, 12 May 2022 14:52:33 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 y20-20020a056830071400b00606a2ebd91bso2853488ots.5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 12 May 2022 07:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bb5erSJHP1iwPKC6T9LjpPBBOxxIiwttxQXC8w5mYu8=;
 b=etm0lobu5FolOOIbbRC1gTjRukAyx739a0QZbGNCdAlgTDwqWf0SJUbw4uV+RUcWeb
 /7vI6bBAroHt/coUhfGvKGw18uuzbC5dql3qtN2ta1MXhCFr3Cw1oGV3x1ari4hRu45D
 k5p9EsNepdDsv3xa1oU6VUgGVWTGpK5uPOICRnwejFpxKLIhywErASFF85PV1IWOJlzs
 1pAfDDP9yCSQLCqoayX9wvQ8lb/nMmbvI3cXPay+XtL4s1oCCLGJxX2cgokE3gq5oSkW
 Esfc/jpA0/FZwCMOtI6IaNfQogY6t5UGdNhm5EBcPR+JQNY13bPGTgODSlvqmaEkmx5k
 LSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Bb5erSJHP1iwPKC6T9LjpPBBOxxIiwttxQXC8w5mYu8=;
 b=xQne+IHqXLgLpsiKSeFG4Y5YV+GzWrpsuwxF+dFcvKxLRLlr93JnN9coW+eRtR++Bo
 Kmt8bCwl2hst4rMHvNeOjSWTm//zdWkvbvhKk0tDTY/UhN8CHePD0+nZj2hbZAIaSmUA
 w52U4Ge7IBF8oamp4AeUPFMaj28+k4rbPK6H4xujghobeymuaIye3AZ7jXU/bPbKgUUG
 UNNPMinfWg6FD3BK/MpshqG5Uy24CyQ6VhSPZIMUiWqPU/0xxHhK8PD2YrvoNMvqUFd6
 wD9QRoUqtMCm0ugMtuE8GQP/+J1TFTJcSDbAvd/fzX3lOylho2CmeVyaGby2eMjPqC2x
 giqg==
X-Gm-Message-State: AOAM533jTAqqo3pPq+vyyh3hkxQk0/RK/+6Ivft6p2WeHFwSytlFxb+w
 5FsAjPLNDfJuBYhWd7CbXQ==
X-Google-Smtp-Source: ABdhPJxCBEdr43lYPd9Wth40t85my61ye9hP04vwSZVH7Eyf+aN5aOh0uUmmQFZBFz4RDn+3SkrH7A==
X-Received: by 2002:a05:6830:1d3:b0:606:4067:3b65 with SMTP id
 r19-20020a05683001d300b0060640673b65mr132675ota.142.1652367147471; 
 Thu, 12 May 2022 07:52:27 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 3-20020a9d0d83000000b00606a6f74748sm2001994ots.25.2022.05.12.07.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 07:52:26 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6cc1:236c:b6d0:edc9])
 by serve.minyard.net (Postfix) with ESMTPSA id CF8431800B7;
 Thu, 12 May 2022 14:52:25 +0000 (UTC)
Date: Thu, 12 May 2022 09:52:24 -0500
From: Corey Minyard <minyard@acm.org>
To: Miaoqian Lin <linmq006@gmail.com>
Message-ID: <20220512145224.GM3767252@minyard.net>
References: <20220512044445.3102-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220512044445.3102-1-linmq006@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 12, 2022 at 08:44:45AM +0400, Miaoqian Lin wrote:
 > of_parse_phandle() returns a node pointer with refcount > incremented,
 we should use of_node_put() on it when done. > Add missing of_nod [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1npAB7-009pwd-6R
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ipmb: Fix refcount leak in
 ipmi_ipmb_probe
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

On Thu, May 12, 2022 at 08:44:45AM +0400, Miaoqian Lin wrote:
> of_parse_phandle() returns a node pointer with refcount
> incremented, we should use of_node_put() on it when done.
> Add missing of_node_put() to avoid refcount leak.

Thanks, applied and backport requested for 5.17.

-corey

> 
> Fixes: 00d93611f002 ("ipmi:ipmb: Add the ability to have a separate slave and master device")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_ipmb.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> index b81b862532fb..a8bfe0ade082 100644
> --- a/drivers/char/ipmi/ipmi_ipmb.c
> +++ b/drivers/char/ipmi/ipmi_ipmb.c
> @@ -476,6 +476,7 @@ static int ipmi_ipmb_probe(struct i2c_client *client,
>  	slave_np = of_parse_phandle(dev->of_node, "slave-dev", 0);
>  	if (slave_np) {
>  		slave_adap = of_get_i2c_adapter_by_node(slave_np);
> +		of_node_put(slave_np);
>  		if (!slave_adap) {
>  			dev_notice(&client->dev,
>  				   "Could not find slave adapter\n");
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
