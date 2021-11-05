Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E622044676A
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Nov 2021 17:56:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mj2WD-0000sh-QF; Fri, 05 Nov 2021 16:56:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mj2WD-0000sb-87
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Nov 2021 16:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h8madyWKXeK1vbJRZmChcoqnWsM1Ydj8v8xgZYNa/ZY=; b=Z7WRsFJKRa3gMKD9jJhGuHA5yo
 XDp3Fxz0WhICDh/HEmaJZEbzXnVxwrXEppd+qnFAfl3M6U2UKD81fCs60SLeCJW65t1vgK/xXXyZ+
 2tI7hdvvZFkoiiHOFFOzdEirWw6QNrK8kZSbidh7KRcKFF0mAMez3OThNMHhR5C9Nn8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h8madyWKXeK1vbJRZmChcoqnWsM1Ydj8v8xgZYNa/ZY=; b=J
 9i6At0Xxiympy7lqiY1aGAyDs1ZxxhyBs92hCPGqxBHQtZdYc20k3KQWqlTErLigyx5zG4GFRxuA5
 OK8ig2193Q3P4vUjGHjbqbbn3XZuAkVEF7F5LQUdmBmRi1rGSvVCYBpI5dS7Yj9Mrbwa0/bTwfIm1
 Bl6ts91uXKgZadvg=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mj2WB-002uGZ-VU
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Nov 2021 16:56:44 +0000
Received: by mail-qt1-f174.google.com with SMTP id o12so7722789qtv.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Nov 2021 09:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=h8madyWKXeK1vbJRZmChcoqnWsM1Ydj8v8xgZYNa/ZY=;
 b=mCXh/e+lVMwZ4ImTuwRdHi3/0XJ3Q2PE7C1hOswkTj6ZwVehg0pHPNpK19zqzEhqza
 8Gq7VK3+04JtZBIQ76rq7XrNjkENdiKQpBn583M2bG3nedjoG1Wncm4fJZsezpXZ64aK
 Qq8BpEAQvx8w21rLkOJTreemiuXhyrPAakGifkVSekAJqeFUC3jBuF6LVlb3NUwWrl1w
 jmm2YiRlONQybdok5443tTalIlrjyEfSFyQBq/487BEA6aofRwZWAgXtVxdWrNPe8B6u
 B6IZmhbjyUpeA835u1M9QTMtldwxE3c34Q/9lq0hif767YY2V9WD4FNCRKiPqq9qmzhk
 dsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :mime-version:content-disposition;
 bh=h8madyWKXeK1vbJRZmChcoqnWsM1Ydj8v8xgZYNa/ZY=;
 b=mW971FH4TxlzNnCXFb2ojlJX5/6qckyFtRib5HJwCuA26MCELbQyqqKvKP7fuG0c+e
 +iIOo4BgHF8UXJkVB8d536fGBzxQbWgEi1Y+di3BFwHBQL3X+HGZPXvDNmjt1GGpsazs
 Y16BTgI4AG9iYhNQDLj3MYjT7T+aOAoIlSPSqWXNWnj0JlQ304v+mapzJb+BPXNxuOWj
 RojnC0tr0VwYsq+gWcDFP4JNpccF2HVmpH6YQrkMrm80OcBHxqeSRmHv2RKaAru+UMeA
 hqiyrQxtzAg+LbRUplD9AZ/TeZZLC5eoizSOVIWKMst52ZJSj2Aap9PckrklphUCygli
 UJyw==
X-Gm-Message-State: AOAM530mnfk3iZZXZ3K0zBs2ZW6Edf8AKLpx2Z/LsYcWeBD2L/7AR/PX
 e9ftSK4x2NPI1bQrs2zMBc80MOj9tg==
X-Google-Smtp-Source: ABdhPJxel+uKZ78rLwND5t9lzahA5WmuQXKf9vtyE88U5HS8zjgULAGfZHlPQyrbEwfhmJ5n3rZN2w==
X-Received: by 2002:ac8:6158:: with SMTP id d24mr62067826qtm.115.1636131397963; 
 Fri, 05 Nov 2021 09:56:37 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id v7sm5456742qkd.41.2021.11.05.09.56.37
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Nov 2021 09:56:37 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6953:3f20:196a:5942])
 by serve.minyard.net (Postfix) with ESMTPSA id 5D93A18000C
 for <openipmi-developer@lists.sourceforge.net>;
 Fri,  5 Nov 2021 16:56:36 +0000 (UTC)
Date: Fri, 5 Nov 2021 11:56:35 -0500
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <20211105165635.GW4667@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Minor updates for building, and a few bug fixes for SoL. You
 should upgrade if you can. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mj2WB-002uGZ-VU
Subject: [Openipmi-developer] OpenIPMI 2.0.32 released
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

Minor updates for building, and a few bug fixes for SoL. You should
upgrade if you can.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
