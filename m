Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFA3301215
	for <lists+openipmi-developer@lfdr.de>; Sat, 23 Jan 2021 02:43:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l37xy-00067U-QW; Sat, 23 Jan 2021 01:43:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1l37xx-00067N-R5
 for openipmi-developer@lists.sourceforge.net; Sat, 23 Jan 2021 01:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=imNF85zMWTYiCTUPBOV45HcaHY6dgWqsC84CJCQR0dk=; b=jwhuDHgU0BMbpTATWtKkAzNUnm
 CltWvKDKpIRXIbaejpIE42qgQsxEa1Si6EsWUrC04KdYtNs2ChlxtHoZI2OEJyA8t5j89kcOYy3Pc
 MJ5OoSGj2jDWI8WDtvXY04StJ11bfx6VLTKj5yBkJ6ndnOkLc9SY+ZwQLNrRvM6Dnsx0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=imNF85zMWTYiCTUPBOV45HcaHY6dgWqsC84CJCQR0dk=; b=Z
 fFWSwWegA0NduIDVyQ3YOGpFJfepAk1RNX6E8nQ3SfJ88dqNYpkLsKMQ8jZeBkGLVZMLhFZRJV14Q
 yV8671VxB6uHeqvPNl9F8BaaRYfmoJqBAx4ibihFI+D/m9L2/jj5l/3IM21hpnVUTkUSgQa/WCQke
 XaymaCchnyzE+pPI=;
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l37xi-00HaaQ-Rq
 for openipmi-developer@lists.sourceforge.net; Sat, 23 Jan 2021 01:43:53 +0000
Received: by mail-oi1-f181.google.com with SMTP id x71so8171034oia.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 22 Jan 2021 17:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=imNF85zMWTYiCTUPBOV45HcaHY6dgWqsC84CJCQR0dk=;
 b=vgjdYzd25FwEBF8EDyS/Nef2GBf2KIvZ5MPMSA0j6yJhjljKBXBuEvdkutwwKIDuGu
 ftW9M7VtIi5ZDrAF2PhJ/Z7VualBkgq7qpEdcWnLapHd+pTVtDupXjXIl4UXiaxIDQA1
 Oy2dVOqn6Pzoe+VzGxPLbAVCmwejLeDWftnEFTxHX9VvZSz7amXjrSnIcX7Y8xj3pcRJ
 C8I0vZs11uX/XUhfTyakWGpI+D33TL/HueFc72F8RPC4zhVs6aP/zNapXUhUt0qgBOTG
 jkMyokcUuC1kjlTw1R6n76sw1u2Cq9KaABWxOLqM6nVq43lBRgyPDBusPpRz+EZYumC6
 KZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :mime-version:content-disposition;
 bh=imNF85zMWTYiCTUPBOV45HcaHY6dgWqsC84CJCQR0dk=;
 b=LjVL9ZL92Mc3+weG+BEK/59aN9iJpj83OAhmPIxblOijF2sDgHMFzpKj2fgkO6Ddhl
 eSGaJwZGSOm3z67W/h9NAjae3TnjXt3DBzlVvT+tSCIDX+5cSlb5jvlKX5g6U/0YR9mL
 EOzXaDuwVa9bbSjeB/9YN75WUgO8bPUgvTYXIY8DLEmrCvqFD1pEtqV62j5TbWyTiAyZ
 38kOM4kBTE6POlngczjHsENIwEDdwj84LZDlJ7jINmrkKKBtm3XGCUG38o2N98eRbenu
 iSXOr9c9QKDvf9byE2LKO+PnB/d4FiedLpthmUejyz2X5Tc+NYc8H/CwqfB75Su+FfDh
 ArIA==
X-Gm-Message-State: AOAM5325kW5INDLNGBPUxCXh+dEDf7ghZivnLHg5MxmwWgC1c3E5bpoC
 f2sl/jQcTBX+2TBwDBAm7q2EojV+0g==
X-Google-Smtp-Source: ABdhPJzG6uhMdUvmJ8fGl8RpX+6hYne3HsnXutBLf09pWnOCZxtLUvbsw+lcedt1C/csSLa+CmKVRA==
X-Received: by 2002:aca:548d:: with SMTP id i135mr5160544oib.72.1611366205480; 
 Fri, 22 Jan 2021 17:43:25 -0800 (PST)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id z1sm2162009oib.54.2021.01.22.17.43.24
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jan 2021 17:43:24 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ecb8:97e0:27ff:a134])
 by serve.minyard.net (Postfix) with ESMTPSA id D069818055B
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 23 Jan 2021 01:43:23 +0000 (UTC)
Date: Fri, 22 Jan 2021 19:43:22 -0600
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <20210123014322.GE1157510@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.181 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1l37xi-00HaaQ-Rq
Subject: [Openipmi-developer] OpenIPMI 2.0.31 released
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

IPMI SOL fixes.  If you use serial over LAN, you should upgrade.
If you use gensio or ser2net, you need to upgrade those, too.

I've been playing around with Windows support.  Nothing complete yet,
and I'm not sure how to proceed.  I might look at basing this on top of
gensio, since that would make things easier to maintain, but that would
either introduce a circular dependency or require moving LAN and SOL
support into gensio.  Which wouldn't be a bad thing, but it would be
very hard.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
