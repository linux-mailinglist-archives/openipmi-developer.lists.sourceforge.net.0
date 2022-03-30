Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C32374EC6F6
	for <lists+openipmi-developer@lfdr.de>; Wed, 30 Mar 2022 16:45:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZZRX-0001LS-Gz; Wed, 30 Mar 2022 14:45:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZZRT-0001LH-9w
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 14:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lTgajV11zNpM7mAdZ1h28DYUbBkTePOXWgji2CQAO54=; b=c2CMZidw0dYhOrjLTXdxUoSki4
 aHc0Ncyi7+a3X2tHHysszfD7CHnYs2t1ABt1CRsNOQtAfDxKgx0I1NN4gkzwUYq2/DrIpVlAsMyQq
 s3SvZMELRIhdKHigED8fM4lzQXakZtDyARXg8/8wkCT35VWWvKG28V/skLQibhHSmxUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lTgajV11zNpM7mAdZ1h28DYUbBkTePOXWgji2CQAO54=; b=jt+DfxJgYQCwD6/QvYn/hBQ/ie
 vUxK5Oe9gIRbUIaQBQZd7iY/0mSzCbN0SfALJ4edRmIijZ1CkqUuEGmOd+fKxtKZNw9XYVNmPMfsi
 2IqZtUiVZroR+32l6ivM263zk9/Vlw+G64lQKas2oXRvArqLheActUM68C7izXV5vGfY=;
Received: from out203-205-221-236.mail.qq.com ([203.205.221.236])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZZZI-00HFZo-Bx
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 14:45:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648651492;
 bh=lTgajV11zNpM7mAdZ1h28DYUbBkTePOXWgji2CQAO54=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=DjKyToN9tSHkgyfG4Z3OYrIAUNYU4ECzw5wTmgjWZcW0HCWqRUvNQB7cl8KnPOh99
 53YCEwl+3LhWkcEGEvgPTSWBVFQBNIyNcg5uTWGlNgrwYJhgA3K3BhzkbxsP0mOmxo
 YpVBI8c1sggO7buueVtFUEurMWeJaP25vnGnikgo=
Received: from [192.168.31.6] ([120.245.132.52])
 by newxmesmtplogicsvrszb7.qq.com (NewEsmtp) with SMTP
 id B3296492; Wed, 30 Mar 2022 22:44:50 +0800
X-QQ-mid: xmsmtpt1648651490tjisbgjpr
Message-ID: <tencent_508F9F7681360F657D131FF97D2C53506208@qq.com>
X-QQ-XMAILINFO: NKv2G1wnhDBnP95dw+5kBstDP0nV5i/NtDG7Z4JJhAuzH/sjD+aYjQgMRzFY+S
 Hhtv51RgLTojdgDD+gPhDyvSoPCtG0+NluQ/Lc+/BXGkdGHENL3ksnfBwRGCVZc3Wb1FnaFC+hPn
 fC4MAl0+UGdHFC0oUIWo4IyJkygyHl0ZDSyqaZprWVw4/e5RCpZYSUkZ5Tm57BewTYTtNhH2Zgf8
 Mh340U6eAjqaHl8N9FR0K2brOILGxTjR/jc0xeMWzfZw28mV7RCcrjsgcx79y6aAkEAJc3D1134c
 xXx60RVclkQ7mdCJecUTkE3LRTIQ7zkIa92XegT/P7uY9xvfSs9qNSbYabGNqlVmeCTkzisiL7eh
 WjCH49ixXZnNRz7M6dMHPJH0cjdX3CruTSydnGOnkatZlULyeSwPaIdRiKSZcyG0so1YzQ8Hzrug
 q75Bx/nUJtPll8ZzVrESJnmo2Lbxo2j+hnGQNz+naHrr7R8zL+ldiYXvq6TW6lwDu4/37zBup97J
 mOzFG2L8A0G5zYSpGnMLl5h1dYYfor9AojvHzl2dxDhL0xzEn8Qv1s2utwHp6xo3IOnALbfMBGjl
 fdxBqKjZFJjXLh+Z8UnyKRSuVjBkDNVuYvOARuYd2MAJih6L+nobGVRpECiHP3gquqmRV0an6Bd2
 pM9BsHoRlC5djX37EOQK8lgFhZ0b079oGrNdOcESRsYGBDGVBFuUUv+jv8Sf2H2FIh0YiNZelPst
 nKlyEofVOR1TiVnVXEDRgsfpO0mOTAiS8xUCqV4herV/lPaOirfzN82tCifmpyVbVc39QOWUV9Ow
 5L4dvJJnJN1fQeASPaApnk4boeGQGzeEfa91dhhfREcElG1+N5JDDp2p8+gxHlQ+vQSPFZwXejLe
 5g9Q3/BL+LaCGAXK2TI6M4ZmT+7ZU5p8YnMvD+lZFxvcOXTx/8Rzq0Dsehbnje3mVQMq3bj69d
X-OQ-MSGID: <261ebec9-bb27-1ab0-b2d7-d2a26274cd95@foxmail.com>
Date: Wed, 30 Mar 2022 22:44:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: minyard@acm.org
References: <20220329183340.471474-1-minyard@acm.org>
 <20220329183340.471474-3-minyard@acm.org>
From: chenchacha <chen.chenchacha@foxmail.com>
In-Reply-To: <20220329183340.471474-3-minyard@acm.org>
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > @@ -2298,6 +2309,14 @@ static int i_ipmi_request(struct
 ipmi_user *user, > struct ipmi_recv_msg *recv_msg; > int rv = 0; > > + if
 (user) { > + if (atomic_add_return(1, &user->nr_msgs) > max_msgs_per [...]
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.236 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [203.205.221.236 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1nZZZI-00HFZo-Bx
Subject: Re: [Openipmi-developer] [PATCH 2/4] ipmi: Limit the number of
 message a user may have outstanding
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> @@ -2298,6 +2309,14 @@ static int i_ipmi_request(struct ipmi_user     *user,
>   	struct ipmi_recv_msg *recv_msg;
>   	int rv = 0;
>   
> +	if (user) {
> +		if (atomic_add_return(1, &user->nr_msgs) > max_msgs_per_user) {
> +			atomic_dec(&user->nr_msgs);
> +			rv = -EBUSY;
> +			goto out;
> +		}
> +	}
> +
> @@ -2369,6 +2388,8 @@ static int i_ipmi_request(struct ipmi_user     *user,
>   	rcu_read_unlock();
>   
>   out:
> +	if (rv && user)
> +		atomic_dec(&user->nr_msgs);
>   	return rv;
>   }

If the number of msg is greater than the limit, the nr_msgs will be 
decrease twice.

Should it be returned directory?

--
Chen Guanqiao


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
