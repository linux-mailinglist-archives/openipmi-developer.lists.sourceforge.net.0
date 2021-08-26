Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDC73F7FEA
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Aug 2021 03:31:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mJ4Er-0001CX-Qd; Thu, 26 Aug 2021 01:31:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mJ4Eq-0001CL-Ff
 for openipmi-developer@lists.sourceforge.net; Thu, 26 Aug 2021 01:31:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L3ag6y+BRSwGJ69TJA1ZH2sqP69Ij+UOgFKqlY/H9Vw=; b=Lnz6NK2+khBQQDuSsbnKkvCook
 8qHTy9erRQZRZxjLeyNqN846cQLIMjM/x/t3masXSA7x43S1fGT3UPQEiz89iDoV1LTJpdhzDF1LC
 XvW3GwjKDtdg8aNOLuUEOlvAn/ks/xg6zn1qC1oF0m4X9s3b1xD5RLZPw+jwwxw4dJlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L3ag6y+BRSwGJ69TJA1ZH2sqP69Ij+UOgFKqlY/H9Vw=; b=VCXuHgrkWaDMbQOQZwHAw5MFfQ
 DCAnly/L6jMCEOnKhIheieZoSOIboV3tRnA8vDtg+Zj29YDKYUJKMWWOIGhKf0raURYmdaqx1O9O2
 zQ7tYMvKtWcFCnpEvt7kvriQX5OwvSXK/Nklz8uvDy4JVnfSyDjHcFOWYPaLRG4dwYQ4=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mJ4Em-0019ej-MI
 for openipmi-developer@lists.sourceforge.net; Thu, 26 Aug 2021 01:31:28 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 o16-20020a9d2210000000b0051b1e56c98fso1393819ota.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 25 Aug 2021 18:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=L3ag6y+BRSwGJ69TJA1ZH2sqP69Ij+UOgFKqlY/H9Vw=;
 b=hS53gyO5MbNFI471gdsTs0TpPlfvgBTkZtBwGsuPeJsIzg1d04k2n7Mp82Y9F+1tQA
 GOklS5xxQgM54tgqk7pH7gnVJuGFZ/jenSxUVWKKrwjqO/H0CEIQONqQtdU7K0jm61Wi
 +mgorzMJ58JIjyJhre2Ea+C3AxsylRye1iRDCxUJs9vw+G+DxyT1Z7SWnNzyLInLg2wk
 8NqASXAvL2fKqjeLhg2SL6JFYPCby/ALZbPeUcPB0JsefVAGfTgXdXsFQg2Y487ipQdm
 Y6rTxuMkMEpvwM/Z5vyfb2APMui3MPwHyd8AD7MIGvgNCWAGPgQZFWhI7xI1XJHf7wfk
 ifcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=L3ag6y+BRSwGJ69TJA1ZH2sqP69Ij+UOgFKqlY/H9Vw=;
 b=Qw2Jd7I/ZTRq+R2bvc32HrjmEapZ/ApknKOhVE9qst8PSgyQax8IQ5S+UYlbtWFCB2
 m57/ivkOZIXpPGRjuMIiHakbX8vhyNWnfDyMZ5y4RRrpYyEPaI2uDeO8nHnUTDzMtvl1
 uGSVwTx7kj84dfWPRRZzO0es+UpRudXhfVqornRc/q/gwzJfM0OB6N2wA5gVwig8MSc0
 3Z3LUetPBGYu0FIsFZBrW2uUKlOH1ESev9UA93BbxmOByZvIvXyaaoT/XXkEyc9CS2jd
 rTErWvHmJeucjHy7r8tcFTmih6qOCu5eBGKr9Z7lMKoO3/EhkQsnUTT9I4Fo/dv6tp6I
 pM0A==
X-Gm-Message-State: AOAM531QNSSrCj78d+Hb20VJqy2W/o0626JokTLrV/lURRneZqFVeK2K
 lqMwRmn4HUn9VUmdjDefO5MyjO1ujA==
X-Google-Smtp-Source: ABdhPJzgKa2Z7e5gieKWmpYb1WPYZQJTwFYUPIdbWRwo/UVgv8plg/VBon1zzjdQH90VQhguQYrjeA==
X-Received: by 2002:a05:6830:3181:: with SMTP id
 p1mr1094761ots.210.1629941478720; 
 Wed, 25 Aug 2021 18:31:18 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id d81sm375625oia.15.2021.08.25.18.31.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 18:31:17 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f565:84b4:3d79:1c45])
 by serve.minyard.net (Postfix) with ESMTPSA id C11371800ED;
 Thu, 26 Aug 2021 01:31:16 +0000 (UTC)
Date: Wed, 25 Aug 2021 20:31:13 -0500
From: Corey Minyard <minyard@acm.org>
To: Pavel Cahyna <pcahyna@redhat.com>
Message-ID: <20210826013113.GA545073@minyard.net>
References: <20210123014322.GE1157510@minyard.net>
 <YSaKxX9tgS2IxCWH@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YSaKxX9tgS2IxCWH@redhat.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 25, 2021 at 08:24:05PM +0200, Pavel Cahyna wrote:
 > Hello Corey, > > at a quick glance at header file diffs, it seems to me
 that the Windows > DLL changes are introducing library API chang [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mJ4Em-0019ej-MI
Subject: Re: [Openipmi-developer] OpenIPMI 2.0.31 released
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 25, 2021 at 08:24:05PM +0200, Pavel Cahyna wrote:
> Hello Corey,
> 
> at a quick glance at header file diffs, it seems to me that the Windows
> DLL changes are introducing library API changes even for non-Windows
> builds. Specifically, commit:
> 
> 26e0921e77b6db359e7b018e8d439fcd1222d891 seems to affect the API of libIPMIlanserv.so.0.0.1
> cb416caa52dd73e53ada88ccda4aa496154519e8 seems to affect the API of libOpenIPMIcmdlang.so.0.0.5
> 
> Is that correct? If so, it seems that those libraries should have their
> major version numbers bumped.

Yeah, I suppose.  lanserv is not that critical for library
compatibility, and I seriously doubt anyone is using cmdlang.  So I
didn't work about it.

If you like I can update these and do a new release.

-corey

> 
> Regards, Pavel
> 
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
