Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA72D385B
	for <lists+openipmi-developer@lfdr.de>; Wed,  9 Dec 2020 02:42:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kmoV3-0004cH-GH; Wed, 09 Dec 2020 01:42:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kmoV2-0004cA-BR
 for openipmi-developer@lists.sourceforge.net; Wed, 09 Dec 2020 01:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RJsxtBPVk8M5P1AzTxrW+HRHCsCa4CIcmsRUsBqSHlE=; b=H3kL/i9N7ZZ0QFoK9wln3ANDVX
 HRosWuQTJkVaOU7iGRUtz6ibXgJEr38/Wey/eiCYCtjwx9QJkBM4MDC6BBT86lblJ64ArwIOg7Wk6
 qqkbaYgYJUFYOmqikfSHCGmqP2EXYmenkUZqBBYta6RS5kGpx09Ch/wLQUQgO1Zzq2jY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RJsxtBPVk8M5P1AzTxrW+HRHCsCa4CIcmsRUsBqSHlE=; b=D
 f9b3mvRrpjMjK9VyjavxKaMD1277UBRbGCzQm6pviX8WIStApuUBtpFcZ1TA7iTonYu+nu+fplhr8
 rzqsuVmNYaoo3wzlf0JWXCTC896z28siwIvZEjV5IY3FcgbsuidjqKjhidS+2hUjOQzGrjvqQ0XJE
 jDS6cFKNlhmoSaXI=;
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kmoUx-004Jfu-9d
 for openipmi-developer@lists.sourceforge.net; Wed, 09 Dec 2020 01:42:36 +0000
Received: by mail-oi1-f181.google.com with SMTP id f132so30291oib.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 08 Dec 2020 17:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=RJsxtBPVk8M5P1AzTxrW+HRHCsCa4CIcmsRUsBqSHlE=;
 b=mYQEMBpznsefy9YcFOcBHjqnj1LtCqYcOpTItdJsKzvDcVsTIkOTXA3VHmDFPGPJKo
 m91RPrwQzlrrNqgLt3Reh1OS8Sn/NRJTS6JTcAMj8K9kTJnU8cND95MTq73K9CRpcYHS
 SF6QFP+HWYIdz2DGCTGqJi564J+FKvKk5/cYFXv9V1nVEmEugVbTC4YXXaZGgzgUa+Xh
 L/yS0/jYibYxCjtVaFYpWxnxxoK5yPU1Bz18Xn1M36bBmXCBWIc4Uv/+GboPdJ75COTN
 54sH44tfBpar/sAj2C/cjuplSkb1GFiFvUPsXhSkcsncNfOScveKvAU5JkEjzDtbLPQu
 jaTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :mime-version:content-disposition;
 bh=RJsxtBPVk8M5P1AzTxrW+HRHCsCa4CIcmsRUsBqSHlE=;
 b=SB7FyyEp9IFy8cFO3Xild1UfB/SJ/y+KOQ00/h3rg0YKjAh5bRSPUlYBz44lTX2SRA
 QrlApuRz7Y++Y4OXc1JOi2jfhM7VX+O5sFxsbkdvdzco8adIDFVBYf/qxXlsixnzICUz
 Pvx9o6RIb5OaOju6FkWqCTWj3qVyqswcj8P3znzA1rfuA2fpgBS+WxzklSY4LRIadRpF
 mxEphYWm04wEKc4knmUmSQZ0KDKxKRZNHG3FSuvQ5sJqpfDEkn29M6vrBNwZXh1oIBJD
 4xElTlcpP3jW2Ysvi8T9NQCndiA7O4qEiRDsY//SVdQCA/wWweFrwfNXimRGumX62aQX
 SyRg==
X-Gm-Message-State: AOAM532bu/o+MZbX+2LYCzicjbjvjh4ja8BPI8KXz95ZUX7Y+L7TueKc
 v/63cjYf6+Mgt2h8tU7khop8TvUPivEj
X-Google-Smtp-Source: ABdhPJylUxDmKIy1ig84ccRHeRYGHadE7iooOvG/Y4SvGux+/MCPC0dodNMt2PYfvg5y1LgVpkjKFg==
X-Received: by 2002:aca:c592:: with SMTP id v140mr223873oif.10.1607478145340; 
 Tue, 08 Dec 2020 17:42:25 -0800 (PST)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id n13sm53563otk.58.2020.12.08.17.42.23
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 17:42:24 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:c5af:fb73:3d1:25c2])
 by serve.minyard.net (Postfix) with ESMTPSA id B5B15180048
 for <openipmi-developer@lists.sourceforge.net>;
 Wed,  9 Dec 2020 01:42:22 +0000 (UTC)
Date: Tue, 8 Dec 2020 19:42:21 -0600
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <20201209014221.GA11017@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kmoUx-004Jfu-9d
Subject: [Openipmi-developer] OpenIPMI 2.0.30 released
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I've been busy on the gensio library getting IPMI SoL up to snuff, and
it shows here. There are some general fixes in various places, but this
is mostly a complete rewrite the Serial Over LAN code to simplify it and
improve stability.

If you care about Serial Over LAN, you should upgrade.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
