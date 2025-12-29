Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEB1CE5AEF
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Dec 2025 02:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dABOnMJQaNO0/RDCahFPhqBxeED6Zm8UC+4OjmNVVkk=; b=MBUZt2xsjckncY5mPLGMcv9Yjj
	jq6O3opcSrzxiCgDwCyk6YKbFBEQca8OgZC0+WdvK+BHahcmZLbxBXcRt6CdN6ZTPG4pTQLwyej3t
	oBN/ehc/fAyBe8JzDpNXJgy89jVxViWHrgcCYAC+u+2hFJQtCBwjznSknscXqbkeKIo8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1va2Bt-0002rW-JL;
	Mon, 29 Dec 2025 01:36:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1va2Ba-0002r7-Iv
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 01:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mq3sHXccFbqRV4xS30CAW5QgEdvW/ULLBLbWw3jOFsA=; b=Fev2MgGtpdbNsmeRUfn923xJ4b
 Ju2fnCscgRIlsdi2/g25bvHt8DqLlWXVIzwW8IbKKTeJ9L/gPDXD9jb+X4iL3q9k308dRKDj2/MVR
 oa28Mp47emud8PCMoN0TJanlkQ0CqjEx+xJ4tq0nKRhmJu+A+JtoehNZH51ugxtgrRZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mq3sHXccFbqRV4xS30CAW5QgEdvW/ULLBLbWw3jOFsA=; b=jzjhJSa34ECbU4x6ziXv1cSDhi
 +4jZOkWtBkn+3AvL87ufWrZ5P+stVniyV6ny/LLvU+Ns8LfFnQWx3BsZfMSio/RCmmSiumqqJjIOk
 S8CLJZUtjJXYg8XYw3X6eSnLHseM1kDZVhdBIHMv5k7M6qiQfyuei93LiIhdSBnXyhvU=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1va2BW-0003QL-Ea for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 01:36:34 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-3f9e592af58so4692107fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 28 Dec 2025 17:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1766972184; x=1767576984; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mq3sHXccFbqRV4xS30CAW5QgEdvW/ULLBLbWw3jOFsA=;
 b=jQqy+3S3u6fbf0g1Q0lS4uA8dgmhM2cQjnyi9F1XuI/8dL2HOgu584+mXpbq0fT9d8
 r6yFHHow9FyGQDhU0Zor+4+1maBEit4he4wNXFtbPJBSMvIqaQmb/+hbuLS9ZmEDme4E
 huZQenPCih84Rixe8xuMglH/A2EzYtNEltfyUsvidyNzDlYOTaYA402k4BgdWkJIwOQK
 esjmeeOhyrXPK/vDXK+6LiOU/ebDCtKQTkXwZ896uPsubpn/itja38sq6DilwknF4ewn
 OSKiE3QXGY5YiZmGE2afC7v1wMus2MdzM1SakI6R1yi1B8UdZelIeJwqFS3V0y1haMFY
 0+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766972184; x=1767576984;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=mq3sHXccFbqRV4xS30CAW5QgEdvW/ULLBLbWw3jOFsA=;
 b=IlsfmuDz6ZGypkWP+a6SFx5nQ8p9+f4jl39gjvczXnlZ5NLxNMpcD5oBXv31T7SZ5j
 6m0K81UGDRrbqp8B63+FZzQ1zQWC7UIOgvYZUpjGNS1vBEGqsIHQOyRJcY68db3bs4eh
 U0IEqnndJdK+IAXfwH8ToEeeyOAZNWSwi1TLHVcrWL7McwQjFzGDsNs7MCvgsPgljh/q
 o1sE7uOd/JpMQ+KH/wnHw8Gl/ICithAxEgFSXCzFDFmJPiMvMory0FIosew9oNZBYu+D
 B3XStcU3KqwsTdaSH0g25wnQJRvK/qUPRY05wTdOfzBeomfPqAMpFcJj6XYVwz2GVYsz
 RSyA==
X-Gm-Message-State: AOJu0Yx9GhAs9dmicpGlDgiSKdp2d0wzDyOuMrTRCPpVV0rgz+EfBaR5
 KzsaP3RVybK5hPZZnA4SZSrDT7vueqME1SB25IwOzefQgE8+w8ElsN8RoLhd53PfNQAwAw7KMhm
 lDaPAH64=
X-Gm-Gg: AY/fxX6nwezg8tb2+nyRAG0Gw5Wps4Jnd/mRyDEONrlYwZ0pQnzGKAepqd0sglSThBL
 sVadqPJNXcdqEuzHj/xs6hN/VK3h9p4/TNlWdJecgiEqB16LnUtJr7kHKPA107L4w7rxDkmpmar
 FXv3oendK4dlVMZTvZjTQEGROAJkCOtuzY99Tytf+U2Yu1dDTuhMr9ZY3fnfLDPflWonaSXwaW3
 B9ySDJlhIgmtjKoH7pKl1hVkgNbrnbUOWOFsDS7QKXaWnUmfEKtl+tl1AcZJ68JiqY6EjIoKkMy
 rZ+YUl+kMDScp2jTnGGyIDKMHFVzHHx2hmG0iIndn01LBH4nSL18mZpQhiMmjdIn83Tk+lnUkbT
 2bHfysGmxnKvhh5FRINI56FN/a7OAaoG73tTeOSusNIiYzV9FmOCZpAsiQTwi+KuPIZgrVDBLBI
 loVFUdv2HFK7PW
X-Google-Smtp-Source: AGHT+IELkEzYQDAfW9ntnj2KwrnpzVyXo3XSXSBr61W7aiAewRL48CmlT66NlYGcBiwNeVsG0ml7gQ==
X-Received: by 2002:a05:6870:8929:b0:3f5:4172:28 with SMTP id
 586e51a60fabf-3fda546f9f8mr13174085fac.57.1766968028465; 
 Sun, 28 Dec 2025 16:27:08 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b9db:128:b183:1113])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3fdaabbadacsm18080763fac.15.2025.12.28.16.27.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Dec 2025 16:27:07 -0800 (PST)
Date: Sun, 28 Dec 2025 18:27:01 -0600
From: Corey Minyard <corey@minyard.net>
To: Michal Berger <michallinuxstuff@gmail.com>
Message-ID: <aVHK1Vu4nbVwEfb2@mail.minyard.net>
References: <CACosJgzgNiNxuqs7JP2So0STmV-5iKzGUk2GhpazY-1MdMR5Fw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACosJgzgNiNxuqs7JP2So0STmV-5iKzGUk2GhpazY-1MdMR5Fw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Dec 29, 2025 at 12:08:11AM +0100,
 Michal Berger wrote:
 > Wrong data is used to determine the record_id - instead of the > rdata,
 msg data should be used instead. Reproducible with: Yeah, that was a pretty
 dumb mistake. Applied. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1va2BW-0003QL-Ea
Subject: Re: [Openipmi-developer] [PATCH] lanserv/bmc_storage: Fix record_id
 in handle_delete_sdr
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Dec 29, 2025 at 12:08:11AM +0100, Michal Berger wrote:
> Wrong data is used to determine the record_id - instead of the
> rdata, msg data should be used instead. Reproducible with:

Yeah, that was a pretty dumb mistake.  Applied.

Thanks,

-corey

> 
>  $ ipmitool raw 0xa 0x22
>  01 00
>  $ ipmitool raw 0xa 0x26 0x1 0x0 0x1 0x0
>  Unable to send RAW command (...): Requested sensor, data, or record not found
> 
> ipmi_sim is not able to find the record in the SDR since the
> record_id is set to a "garbage" value.
> ---
> lanserv/bmc_storage.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lanserv/bmc_storage.c b/lanserv/bmc_storage.c
> index dda663da..021d0118 100644
> --- a/lanserv/bmc_storage.c
> +++ b/lanserv/bmc_storage.c
> @@ -1292,7 +1292,7 @@ handle_delete_sdr(lmc_data_t    *mc,
>        }
>     }
> 
> -    record_id = ipmi_get_uint16(rdata+2);
> +    record_id = ipmi_get_uint16(msg->data+2);
> 
>     if (record_id == 0) {
>        entry = mc->main_sdrs.sdrs;
> --
> 2.43.0
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
